import 'package:c2s/data/models/get_entry_models/initial_walkthrough_checklist/initial_walkthrough_checklist.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/get_entry_models/initial_walkthrough/initial_walkthrough.dart';
import '../../../data/models/patch_models/patch_initial_walk_through/patch_initial_walk_through.dart';
import '../../../domain/blocs/form_bloc/form_bloc.dart';
import '../../../domain/blocs/form_bloc/form_event.dart';
import '../../../domain/blocs/form_bloc/form_state.dart' as form_state;
import '../../widgets/bottom_buttons.dart';
import '../../widgets/checklist_component.dart';
import '../../widgets/image_input_field.dart';
import '../../widgets/input_field.dart';
import '../../widgets/radio_buttons.dart';

import '../../widgets/snakbar.dart';
import '../../widgets/title_component.dart';

import 'form_screen1.dart';
import 'form_screen3.dart';
import 'package:flutter/material.dart';
import 'package:c2s/data/local/constants.dart';
import 'package:c2s/statics/preferences.dart';
import '../../../domain/repositories/abstract_entries_repo.dart';
import '../../../data/local/injection_container.dart';

class FormScreen2 extends StatefulWidget {
  const FormScreen2({super.key, required this.id});
  final String id;

  @override
  State<FormScreen2> createState() => _FormScreen2State();
}

class _FormScreen2State extends State<FormScreen2> {
  String? crew;

  bool isEmptyHeatPic = false;
  bool isEmptyWaterPic = false;
  bool isEmptyCheckList = false;
  bool isEmptyBlowerValue = false;

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

    final entryData = state.entryData?.data?.initialWalkthrough;

    bool validate() {
      if (entryData?.checklist?.knobAndTube == null ||
          entryData?.checklist?.abestos == null ||
          entryData?.checklist?.titlesOnSite == null ||
          entryData?.checklist?.unventedDryers == null ||
          entryData?.checklist?.moistureConcerns == null) {
        setState(() {
          isEmptyCheckList = true;
        });
        return false;
      } else if (entryData?.blowerStartingValue == null) {
        setState(() {
          isEmptyBlowerValue = true;
        });
        return false;
      } else if (isImageLoading) {
        Snackbar().showSnackBar(context, "Image is uploading, please wait");
        return false;
      } else if (state.entryData?.data?.initialWalkthrough?.heatingSystemPic ==
          null) {
        setState(() {
          isEmptyHeatPic = true;
        });
        return false;
      } else if (entryData?.waterHeaterPic == null) {
        setState(() {
          isEmptyWaterPic = true;
        });
        return false;
      }
      return true;
    }

    int getActiveChoice(bool? object) {
      return object == null
          ? 0
          : object
              ? 1
              : 2;
    }

    List<String> urlHandler(String? object) {
      if (object == null) {
        return [];
      } else {
        return [object];
      }
    }

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, _) {
        if (!didPop) {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => FormScreen1(id: widget.id),
            ),
            (route) => false, // Remove all previous routes
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
                  title: 'Initial Walkthrough',
                  linearProgressValue: 2.0,
                  screen: FormScreen1(id: widget.id),
                ),
                state.isLoading == true
                    ? Center(child: CircularProgressIndicator())
                    : Expanded(
                        child: SingleChildScrollView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: const Text(
                                  'It\'s incredibly important to ensure a proper initial walk through is conducted. Please ensure the following barriers will not be an issue to completing work.',
                                  style: kParagraphTextStyle,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16, 16, 0, 5),
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      if (isEmptyCheckList)
                                        TextSpan(
                                          text: 'This field is Required\n',
                                          style: TextStyle(color: Colors.red),
                                        ),
                                      TextSpan(
                                          text: 'Checklist ',
                                          style: kQuestionTitleTextStyle),
                                      TextSpan(
                                          text: '*',
                                          style: TextStyle(color: Colors.red)),
                                    ],
                                  ),
                                ),
                              ),
                              ChecklistComponent(
                                chooseButtons: (value) {
                                  context.read<FormBloc>().add(UpdateData(
                                      knobAndTube: (value == 'Yes')));
                                },
                                title: 'Knob & Tube',
                                activeChoice: getActiveChoice(
                                    entryData?.checklist?.knobAndTube),
                              ),
                              ChecklistComponent(
                                chooseButtons: (value) {
                                  context.read<FormBloc>().add(
                                      UpdateData(abestos: (value == 'Yes')));
                                },
                                title: 'Abestos',
                                activeChoice: getActiveChoice(
                                    entryData?.checklist?.abestos),
                              ),
                              ChecklistComponent(
                                chooseButtons: (value) {
                                  context.read<FormBloc>().add(UpdateData(
                                      titlesOnSite: (value == 'Yes')));
                                },
                                title: '12 x 12 tiles on site',
                                activeChoice: getActiveChoice(
                                    entryData?.checklist?.titlesOnSite),
                              ),
                              ChecklistComponent(
                                chooseButtons: (value) {
                                  context.read<FormBloc>().add(UpdateData(
                                      unventedDryers: (value == 'Yes')));
                                },
                                title: 'Unvented dryers',
                                activeChoice: getActiveChoice(
                                    entryData?.checklist?.unventedDryers),
                              ),
                              ChecklistComponent(
                                chooseButtons: (value) {
                                  context.read<FormBloc>().add(UpdateData(
                                      moistureConcerns: (value == 'Yes')));
                                },
                                title: 'Moisture concerns',
                                activeChoice: getActiveChoice(
                                    entryData?.checklist?.moistureConcerns),
                              ),
                              SizedBox(height: 20),
                              RadioButtons(
                                chooseButton: (value) {
                                  context.read<FormBloc>().add(UpdateData(
                                      blowerDoorStatus: (value == 'Yes')));
                                },
                                isRequired: false,
                                isEmpty: false,
                                title: 'Was blower door completed?',
                                labels: const ['Yes', 'No'],
                                isColumn: false,
                                isSquare: false,
                                activeChoice: getActiveChoice(
                                    entryData?.blowerDoorStatus),
                              ),
                              SizedBox(height: 10),
                              InputField(
                                title: 'Blower door starting value *',
                                isRequired: true,
                                color: isEmptyBlowerValue ? Colors.red : null,
                                hintText:
                                    '${entryData?.blowerStartingValue ?? ''}',
                                onChanged: (value) {
                                  context.read<FormBloc>().add(UpdateData(
                                      blowerStartingValue: int.parse(value)));
                                  setState(() {
                                    isEmptyBlowerValue = false;
                                  });
                                },
                                isNumber: true,
                              ),
                              InputField(
                                title: 'Initial walkthrough notes',
                                isRequired: false,
                                maxLines: 5,
                                hintText: entryData?.notes,
                                onChanged: (value) {
                                  context
                                      .read<FormBloc>()
                                      .add(UpdateData(initialNotes: value));
                                },
                              ),
                              // SizedBox(height: -10),
                              ImageInputField(
                                deleteImage: (index) {
                                  context
                                      .read<FormBloc>()
                                      .add(UpdateData(heatingSystemPic: ''));
                                },
                                isRequired: true,
                                isEmpty: isEmptyHeatPic,
                                label: 'Picture of heating system *',
                                url: urlHandler(entryData?.heatingSystemPic),
                                doesItExpand: false,
                                addImage: (url) {
                                  setState(() {
                                    isEmptyHeatPic = false;
                                  });
                                  context
                                      .read<FormBloc>()
                                      .add(UpdateData(heatingSystemPic: url));
                                },
                                isImageLoading: (bool isLoading) {
                                  setState(() {
                                    isImageLoading = isLoading;
                                  });
                                },
                              ),
                              ImageInputField(
                                deleteImage: (index) {
                                  context
                                      .read<FormBloc>()
                                      .add(UpdateData(waterHeaterPic: ''));
                                },
                                isEmpty: isEmptyWaterPic,
                                isRequired: true,
                                url: urlHandler(entryData?.waterHeaterPic),
                                label: 'Picture of water heater *',
                                doesItExpand: false,
                                addImage: (url) {
                                  setState(() {
                                    isEmptyWaterPic = false;
                                    context
                                        .read<FormBloc>()
                                        .add(UpdateData(waterHeaterPic: url));
                                  });
                                },
                                isImageLoading: (bool isLoading) {
                                  setState(() {
                                    isImageLoading = isLoading;
                                  });
                                },
                              ),
                              ImageInputField(
                                isRequired: false,
                                label: 'Photos of pre walkthrough concerns',
                                url: entryData?.concernsPic,
                                doesItExpand: true,
                                addImage: (url) {
                                  final updatedConcernsPic = List<String>.from(
                                      entryData?.concernsPic ?? []);
                                  updatedConcernsPic.add(url);
                                  context.read<FormBloc>().add(UpdateData(
                                      concernsPic: updatedConcernsPic));
                                },
                                deleteImage: (index) {
                                  final updatedConcernsPic = List<String>.from(
                                      entryData?.concernsPic ?? []);
                                  updatedConcernsPic.removeAt(index);

                                  context.read<FormBloc>().add(UpdateData(
                                      concernsPic: updatedConcernsPic));
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
                  nextScreen: FormScreen3(id: widget.id),
                  validate: validate,
                  id: widget.id,
                  patchData: PatchInitialWalkThroughData(
                    initialWalkthrough: InitialWalkthrough(
                      checklist: InitialWalkthroughChecklist(
                          knobAndTube: entryData?.checklist?.knobAndTube,
                          knobAndTubeImg: 'https://www.google.co.uk/',
                          abestos: entryData?.checklist?.abestos,
                          abestosImg: 'https://www.google.co.uk/',
                          titlesOnSite: entryData?.checklist?.titlesOnSite,
                          titlesOnSiteImg: 'https://www.google.co.uk/',
                          unventedDryers: entryData?.checklist?.unventedDryers,
                          unventedDryersImg: 'https://www.google.co.uk/',
                          moistureConcerns:
                              entryData?.checklist?.moistureConcerns,
                          moistureConcernsImg: 'https://www.google.co.uk/'),
                      blowerDoorStatus: entryData?.blowerDoorStatus ?? false,
                      blowerStartingValue: entryData?.blowerStartingValue,
                      notes: entryData?.notes,
                      heatingSystemPic: entryData?.heatingSystemPic,
                      waterHeaterPic: entryData?.waterHeaterPic,
                      concernsPic: entryData?.concernsPic != null &&
                              entryData!.concernsPic!.isNotEmpty
                          ? entryData.concernsPic
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
