import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants.dart';
import '../../../data/models/get_entry_models/attic_insulation/attic_insulation.dart';
import '../../../data/models/patch_models/patch_attic_insulation/patch_attic_insulation.dart';
import '../../widgets/bottom_buttons.dart';
import '../../widgets/snakbar.dart';
import '../../widgets/title_component.dart';
import 'form_screen3.dart';
import 'form_screen5.dart';
import 'package:flutter/material.dart';
import '../../widgets/image_input_field.dart';
import '../../widgets/input_field.dart';
import '../../widgets/radio_buttons.dart';
import 'package:c2s/statics/preferences.dart';
import '../../../domain/repositories/abstract_entries_repo.dart';
import '../../../injection_container.dart';
import '../../../domain/blocs/form_bloc/form_bloc.dart';
import '../../../domain/blocs/form_bloc/form_event.dart';
import '../../../domain/blocs/form_bloc/form_state.dart' as form_state;

class FormScreen4 extends StatefulWidget {
  const FormScreen4({super.key, required this.id});
  final String id;

  @override
  State<FormScreen4> createState() => _FormScreen4State();
}

class _FormScreen4State extends State<FormScreen4> {
  bool isEmptyOnWorkOrder = false;

  bool isImageLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FormBloc(getIt<AbstractEntriesRepo>())
        ..add(
          LoadEntryEvent(
            getIt<Preferences>().getData(kToken).toString(),
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
          builder: body),
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

    final entryData = state.entryData?.data?.atticInsulation;

    bool validate() {
      if (entryData?.onWorkOrder == null) {
        setState(() {
          isEmptyOnWorkOrder = true;
        });
        return false;
      } else if (isImageLoading) {
        Snackbar().showSnackBar(context, "Image is uploading, please wait");
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
              builder: (context) => FormScreen3(id: widget.id),
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
                getIt<Preferences>().getData(kToken).toString(), widget.id));
          },
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TitleComponent(
                  title: 'Attic Insulation',
                  linearProgressValue: 4.0,
                  screen: FormScreen3(id: widget.id),
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
                                        atticOnWorkOrder: (value == "Yes")));
                                  });
                                },
                                isEmpty: isEmptyOnWorkOrder,
                                isRequired: true,
                                labels: const ['Yes', 'No'],
                                isColumn: false,
                                isSquare: false,
                                title: 'Attic insulation on work order *',
                                activeChoice: entryData?.onWorkOrder == null
                                    ? 0
                                    : entryData!.onWorkOrder!
                                        ? 1
                                        : 2,
                              ),
                              InputField(
                                title: 'Notes on inaccurate measurements',
                                maxLines: 5,
                                hintText:
                                    entryData?.inaccurateMeasurementsNotes,
                                onChanged: (value) {
                                  context.read<FormBloc>().add(UpdateData(
                                      inaccurateMeasurementsNotes: value));
                                },
                              ),
                              InputField(
                                title: 'Attic insulation notes',
                                maxLines: 5,
                                hintText: entryData?.notes,
                                onChanged: (value) {
                                  context
                                      .read<FormBloc>()
                                      .add(UpdateData(atticNotes: value));
                                },
                              ),
                              ImageInputField(
                                isRequired: false,
                                label:
                                    'Attic Insulation Quality - Misc Pictures',
                                url: entryData?.atticInsulationPic,
                                doesItExpand: true,
                                addImage: (String url) {
                                  final atticPic = List<String>.from(
                                      entryData?.atticInsulationPic ?? []);
                                  atticPic.add(url);
                                  context.read<FormBloc>().add(
                                      UpdateData(atticInsulationPic: atticPic));
                                },
                                deleteImage: (index) {
                                  final atticPic = List<String>.from(
                                      entryData?.atticInsulationPic ?? []);
                                  atticPic.removeAt(index);
                                  context.read<FormBloc>().add(
                                      UpdateData(atticInsulationPic: atticPic));
                                },
                                isImageLoading: (bool isLoading) {
                                  setState(() {
                                    isImageLoading = isLoading;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                BottomButtons(
                  nextScreen: FormScreen5(id: widget.id),
                  validate: validate,
                  id: widget.id,
                  patchData: PatchAtticInsulationData(
                    atticInsulation: AtticInsulation(
                      onWorkOrder: entryData?.onWorkOrder,
                      inaccurateMeasurementsNotes:
                          entryData?.inaccurateMeasurementsNotes,
                      notes: entryData?.notes,
                      atticInsulationPic:
                          entryData?.atticInsulationPic != null &&
                                  entryData!.atticInsulationPic!.isNotEmpty
                              ? entryData.atticInsulationPic
                              : [],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
