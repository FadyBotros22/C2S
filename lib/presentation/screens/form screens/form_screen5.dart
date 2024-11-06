import 'package:flutter/material.dart';
import 'package:c2s/statics/preferences.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/get_entry_models/wall_insulation/wall_insulation.dart';
import '../../../data/models/patch_models/patch_wall_insulation/patch_wall_insulation.dart';
import '../../../domain/repositories/abstract_entries_repo.dart';
import '../../../injection_container.dart';
import '../../widgets/bottom_buttons.dart';
import '../../widgets/snakbar.dart';
import '../../widgets/title_component.dart';
import '../../widgets/input_field.dart';
import '../../widgets/radio_buttons.dart';
import 'form_screen4.dart';
import 'form_screen6.dart';
import '../../../domain/blocs/form_bloc/form_bloc.dart';
import '../../../domain/blocs/form_bloc/form_event.dart';
import '../../../domain/blocs/form_bloc/form_state.dart' as form_state;

class FormScreen5 extends StatefulWidget {
  const FormScreen5({super.key, required this.id});
  final String id;

  @override
  State<FormScreen5> createState() => _FormScreen5State();
}

class _FormScreen5State extends State<FormScreen5> {
  bool isEmptyOnWorkOrder = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FormBloc(getIt<AbstractEntriesRepo>())
        ..add(
          LoadEntryEvent(
            getIt<Preferences>().getData('token').toString(),
            widget.id,
          ),
        ),
      child: BlocConsumer<FormBloc, form_state.FormState>(
        listener: (context, state) async {
          if (state.onNavigate == true) {
            FocusScope.of(context).unfocus();
            await Future.delayed(Duration(milliseconds: 500));
            if (context.mounted) {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => state.screen),
                (route) => false,
              );
            }
          }
        },
        builder: body,
      ),
    );
  }

  Widget body(BuildContext context, state) {
    if ((state as form_state.FormScreen).errorMessage != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Snackbar().showSnackBar(
          context,
          state.errorMessage!,
        );
      });
    }

    final entryData = state.entryData?.data?.wallInsulation;

    bool validate() {
      if (entryData?.onWorkOrder == null) {
        setState(() {
          isEmptyOnWorkOrder = true;
        });
        return false;
      }
      return true;
    }

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, _) {
        if (!didPop) {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => FormScreen4(id: widget.id),
            ),
            (route) => false,
          );
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: RefreshIndicator(
          onRefresh: () async {
            context.read<FormBloc>().add(LoadEntryEvent(
                getIt<Preferences>().getData('token').toString(), widget.id));
          },
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TitleComponent(
                  title: 'Wall Insulation',
                  linearProgressValue: 5.0,
                  screen: FormScreen4(id: widget.id),
                ),
                state.isLoading == true
                    ? Center(child: CircularProgressIndicator())
                    : Expanded(
                        child: SingleChildScrollView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RadioButtons(
                                chooseButton: (value) {
                                  setState(() {
                                    isEmptyOnWorkOrder = false;
                                    context.read<FormBloc>().add(UpdateData(
                                        wallOnWorkOrder: (value == "Yes")));
                                  });
                                },
                                isRequired: isEmptyOnWorkOrder,
                                labels: ['Yes', 'No'],
                                isColumn: false,
                                isSquare: false,
                                title: 'Wall insulation on work order *',
                                activeChoice: entryData?.onWorkOrder == null
                                    ? 0
                                    : entryData!.onWorkOrder!
                                        ? 1
                                        : 2,
                              ),
                              InputField(
                                title: 'Inaccurate wall measurement notes',
                                maxLines: 6,
                                hintText: entryData?.notes,
                                onChanged: (value) {
                                  context
                                      .read<FormBloc>()
                                      .add(UpdateData(wallNotes: value));
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                BottomButtons(
                  nextScreen: FormScreen6(id: widget.id),
                  validate: validate,
                  id: widget.id,
                  patchData: PatchWallInsulationData(
                      wallInsulation: WallInsulation(
                    onWorkOrder: entryData?.onWorkOrder,
                    notes: entryData?.notes,
                  )).toJson(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
