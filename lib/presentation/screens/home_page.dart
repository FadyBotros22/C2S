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

import 'form screens/form_screen2.dart';
import 'form screens/form_screen3.dart';
import 'form screens/form_screen4.dart';
import 'form screens/form_screen5.dart';
import 'form screens/form_screen6.dart';

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
          LoadEntries(getIt<Preferences>().getData(kToken).toString()),
        ),
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) async {
          if (state.isLogout == true) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
              (route) => false,
            );
          }
        },
        builder: (context, state) {
          if (state.isEmpty == true) {
            return EmptyList(errorMess: state.loadingErrMessage);
          }
          return body(context, state);
        },
      ),
    );
  }

  Widget body(BuildContext oldContext, state) {
    if ((state as HomeState).loadingErrMessage != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Snackbar().showSnackBar(
          context,
          state.loadingErrMessage!,
        );
      });
    }
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          Future.delayed(Duration(seconds: 2));
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
            (route) => false,
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsetsDirectional.fromSTEB(16, 36, 0, 0),
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
            state.isLoading == true
                ? Expanded(child: Center(child: CircularProgressIndicator()))
                : Expanded(
                    child: ListView.builder(
                      physics: const AlwaysScrollableScrollPhysics(),
                      padding: EdgeInsets.only(top: 18),
                      itemCount: state.entriesResponse?.data.entries.length,
                      itemBuilder: (context, index) {
                        final project =
                            state.entriesResponse?.data.entries[index];
                        return Card(
                          shadowColor: Colors.transparent,
                          color: const Color(0xFFF5F5F5),
                          margin: const EdgeInsets.only(
                              left: 16, right: 16, bottom: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 14, 12, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text("Created By",
                                            style: kCreatedByTextStyle),
                                        Text(
                                          DateFormat('d MMMM, yyyy')
                                              .format(project!.date),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                            width: 290,
                                            child: LinearProgress(
                                              linearProgressValue: project
                                                  .progressStep
                                                  .toDouble(),
                                              color: Color(0xff34C759),
                                            )),
                                        ElevatedButton(
                                          onPressed: () {
                                            var progressValue =
                                                project.progressStep.toInt();
                                            Widget screen =
                                                FormScreen2(id: project.id);
                                            if (progressValue == 2) {
                                              screen =
                                                  FormScreen3(id: project.id);
                                            }
                                            if (progressValue == 3) {
                                              screen =
                                                  FormScreen4(id: project.id);
                                            }
                                            if (progressValue == 4) {
                                              screen =
                                                  FormScreen5(id: project.id);
                                            }
                                            if (progressValue == 5) {
                                              screen =
                                                  FormScreen6(id: project.id);
                                            }
                                            Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => screen,
                                              ),
                                              (route) => false,
                                            );
                                          },
                                          style: const ButtonStyle(
                                            overlayColor:
                                                WidgetStatePropertyAll(
                                                    Colors.transparent),
                                            elevation:
                                                WidgetStatePropertyAll(0),
                                            backgroundColor:
                                                WidgetStatePropertyAll(
                                                    Color(0xffF5F5F5)),
                                            padding: WidgetStatePropertyAll(
                                                EdgeInsets.zero),
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
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 15, bottom: 34),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => FormScreen1(),
              ),
              (route) => false,
            );
          },
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
