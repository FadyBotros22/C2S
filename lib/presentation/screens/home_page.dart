import 'package:c2s/domain/blocs/home_bloc/home_bloc.dart';
import 'package:c2s/domain/blocs/home_bloc/home_event.dart';
import 'package:c2s/domain/repositories/abstract_auth_repo.dart';
import 'package:c2s/presentation/screens/login_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/blocs/home_bloc/home_state.dart';
import '../../domain/repositories/abstract_entries_repo.dart';
import '../../injection_container.dart';
import '../../statics/preferences.dart';
import '../widgets/empty_list.dart';
import '../widgets/linear_progress.dart';
import '../widgets/popup_menu.dart';
import '../widgets/snakbar.dart';
import 'form screens/form_screen1.dart';
import 'package:flutter/material.dart';
import 'package:c2s/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(
          getIt<AbstractEntriesRepo>(), getIt<AbstractAuthRepository>())
        ..add(
          LoadEntries(getIt<Preferences>().getData('token').toString()),
        ),
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) async {
          if (state is LoadingErrorState) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.message)));
          } else if (state is EditEntryState) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => state.screen),
              (route) => false,
            );
          } else if (state is LogoutState) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
              (route) => false,
            );
          }
        },
        builder: (context, state) {
          if (state is LoadingState) {
            return Scaffold(
                backgroundColor: Colors.white,
                body: Center(child: CircularProgressIndicator()));
          } else if (state is EmptyState) {
            final homeBloc = context.read<HomeBloc>();
            return EmptyList(homeBloc: homeBloc);
          } else if (state is LoadedState) {
            return body(context, state, state.entriesResponse);
          } else if (state is SortState) {
            return body(context, state, state.entriesResponse);
          } else if (state is NewEntryState) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => FormScreen1()),
                (route) => false,
              );
            });
          } else if (state is ErrorState) {
            return body(context, state, state.entriesResponse);
          } else if (state is LogoutErrorState) {
            Navigator.of(context).pop();
          }
          return Scaffold(
              backgroundColor: Colors.white,
              body: Center(child: CircularProgressIndicator()));
        },
      ),
    );
  }

  Widget body(BuildContext oldContext, state, entriesResponse) {
    if (state is ErrorState) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Snackbar().showSnackBar(
          context,
          state.message,
        );
      });
    }
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 36, left: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Entries',
                  style: kAppBarTitleTextStyle,
                ),
                PopupMenu(homeBloc: oldContext.read<HomeBloc>()),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 18),
              itemCount: entriesResponse!.data.entries.length,
              itemBuilder: (context, index) {
                final project = entriesResponse!.data.entries[index];
                return Card(
                  shadowColor: Colors.transparent,
                  color: const Color(0xFFF5F5F5),
                  margin:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 14, left: 12, right: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Created By",
                                    style: kCreatedByTextStyle),
                                Text(
                                  DateFormat('d MMMM, yyyy')
                                      .format(project.date),
                                  style: kDateTextStyle,
                                ),
                              ],
                            ),
                            const SizedBox(height: 15.0),
                            Text(
                              project.createdBy,
                              style: kNameTextStyle,
                            ),
                            const SizedBox(height: 10.0),
                            Text(
                              project.jobId,
                              style: kProjectNameTextStyle,
                            ),
                            const SizedBox(height: 15.0),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/path929.svg',
                                  height: 16.35,
                                  width: 12,
                                ),
                                const SizedBox(width: 9),
                                Text(
                                  project.address ?? "None",
                                  style: kProjectNameTextStyle,
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Divider(
                              color: Color(0xffDFDFDF),
                              height: 0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                    width: 290,
                                    child: LinearProgress(
                                      linearProgressValue:
                                          project.progressStep.toDouble(),
                                      color: Color(0xff34C759),
                                    )),
                                ElevatedButton(
                                  onPressed: () => oldContext
                                      .read<HomeBloc>()
                                      .add(EditExistingEntry(project.id,
                                          project.progressStep.toInt())),
                                  style: const ButtonStyle(
                                    overlayColor: WidgetStatePropertyAll(
                                        Colors.transparent),
                                    elevation: WidgetStatePropertyAll(0),
                                    backgroundColor: WidgetStatePropertyAll(
                                        Color(0xffF5F5F5)),
                                    padding:
                                        WidgetStatePropertyAll(EdgeInsets.zero),
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/icons/ic_view_form.svg',
                                    width: 28,
                                    height: 28,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 15, bottom: 34),
        child: FloatingActionButton(
          onPressed: () => oldContext.read<HomeBloc>().add(CreateNewEntry()),
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: SvgPicture.asset(
            'assets/icons/button_create_button.svg',
            width: 70,
            height: 70,
          ),
        ),
      ),
    );
  }
}
