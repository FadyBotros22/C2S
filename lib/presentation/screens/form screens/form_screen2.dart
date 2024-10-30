import 'package:flutter_bloc/flutter_bloc.dart';
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
import 'package:c2s/data/json_data/get_entry_response_data.dart';
import 'package:c2s/data/json_data/patch%20data/patch_initial_walk_through_data.dart'
    as patch;
import '../home_page.dart';
import 'form_screen1.dart';
import 'form_screen3.dart';
import 'package:flutter/material.dart';
import 'package:c2s/constants.dart';
import 'package:c2s/statics/preferences.dart';
import '../../../domain/repositories/abstract_entries_repo.dart';
import '../../../injection_container.dart';

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
            getIt<Preferences>().getData('token').toString(),
            widget.id,
          ),
        ),
      child: BlocConsumer<FormBloc, form_state.FormState>(
        listener: (context, state) async {
          if (state is form_state.FormSubmitted) {
            FocusScope.of(context).unfocus();
            await Future.delayed(Duration(milliseconds: 500));
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                  builder: (context) => state.screen == 'next'
                      ? FormScreen3(
                          id: widget.id,
                        )
                      : HomePage()),
              (route) => false,
            );
          } else if (state is form_state.NavigateBack) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => FormScreen1(id: widget.id),
              ),
              (route) => false,
            );
          }
        },
        builder: (context, state) {
          if (state is form_state.FormLoading) {
            return Scaffold(
                backgroundColor: Colors.white,
                body: Center(child: CircularProgressIndicator()));
          } else if (state is form_state.FormLoaded) {
            return body(context, state.entryData);
          } else if (state is form_state.FormError) {
            return body(context, state.entryData);
          }

          return Scaffold(backgroundColor: Colors.white);
        },
      ),
    );
  }

  Widget body(BuildContext context, GetEntryResponseData? entryData) {
    if (context.read<FormBloc>().state is form_state.FormError) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Snackbar().showSnackBar(
          context,
          (context.read<FormBloc>().state as form_state.FormError).message,
        );
      });
    }
    final data = entryData?.data?.initialWalkthrough;
    bool validate() {
      if (data?.checklist?.knobAndTube == null ||
          data?.checklist?.abestos == null ||
          data?.checklist?.titlesOnSite == null ||
          data?.checklist?.unventedDryers == null ||
          data?.checklist?.moistureConcerns == null) {
        setState(() {
          isEmptyCheckList = true;
        });
        return false;
      } else if (data?.blowerStartingValue == null) {
        setState(() {
          isEmptyBlowerValue = true;
        });
        return false;
      } else if (isImageLoading) {
        Snackbar().showSnackBar(context, "Image is uploading, please wait");
        return false;
      } else if (entryData?.data?.initialWalkthrough?.heatingSystemPic ==
          null) {
        setState(() {
          isEmptyHeatPic = true;
        });
        return false;
      } else if (entryData?.data?.initialWalkthrough?.waterHeaterPic == null) {
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

    bool updateChoice(value) {
      setState(() {
        isEmptyCheckList = false;
      });
      if (value == "Yes") {
        return true;
      } else {
        return false;
      }
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
        body: SafeArea(
          child: Column(
            children: [
              TitleComponent(
                title: 'Initial Walkthrough',
                linearProgressValue: 2.0,
                formBloc: context.read<FormBloc>(),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: const Text(
                          'It\'s incredibly important to ensure a proper initial walk through is conducted. Please ensure the following barriers will not be an issue to completing work.',
                          style: kParagraphTextStyle,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 16, top: 16, bottom: 5),
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
                          setState(() {
                            entryData?.data?.initialWalkthrough?.checklist
                                ?.knobAndTube = updateChoice(value);
                          });
                        },
                        title: 'Knob & Tube',
                        activeChoice:
                            getActiveChoice(data?.checklist?.knobAndTube),
                      ),
                      ChecklistComponent(
                        chooseButtons: (value) {
                          setState(() {
                            entryData?.data?.initialWalkthrough?.checklist
                                ?.abestos = updateChoice(value);
                          });
                        },
                        title: 'Abestos',
                        activeChoice: getActiveChoice(data?.checklist?.abestos),
                      ),
                      ChecklistComponent(
                        chooseButtons: (value) {
                          setState(() {
                            entryData?.data?.initialWalkthrough?.checklist
                                ?.titlesOnSite = updateChoice(value);
                          });
                        },
                        title: '12 x 12 tiles on site',
                        activeChoice:
                            getActiveChoice(data?.checklist?.titlesOnSite),
                      ),
                      ChecklistComponent(
                        chooseButtons: (value) {
                          setState(() {
                            entryData?.data?.initialWalkthrough?.checklist
                                ?.unventedDryers = updateChoice(value);
                          });
                        },
                        title: 'Unvented dryers',
                        activeChoice:
                            getActiveChoice(data?.checklist?.unventedDryers),
                      ),
                      ChecklistComponent(
                        chooseButtons: (value) {
                          setState(() {
                            entryData?.data?.initialWalkthrough?.checklist
                                ?.moistureConcerns = updateChoice(value);
                          });
                        },
                        title: 'Moisture concerns',
                        activeChoice:
                            getActiveChoice(data?.checklist?.moistureConcerns),
                      ),
                      SizedBox(height: 20),
                      RadioButtons(
                        chooseButton: (value) {
                          setState(() {
                            entryData?.data?.initialWalkthrough
                                ?.blowerDoorStatus = updateChoice(value);
                          });
                        },
                        isRequired: false,
                        title: 'Was blower door completed?',
                        labels: const ['Yes', 'No'],
                        isColumn: false,
                        isSquare: false,
                        activeChoice: getActiveChoice(data?.blowerDoorStatus),
                      ),
                      SizedBox(height: 10),
                      InputField(
                        title: 'Blower door starting value *',
                        color: isEmptyBlowerValue ? Colors.red : null,
                        hintText: '${data?.blowerStartingValue ?? ''}',
                        onChanged: (value) {
                          setState(() {
                            entryData?.data?.initialWalkthrough
                                ?.blowerStartingValue = int.parse(value);
                            isEmptyBlowerValue = false;
                          });
                        },
                        isNumber: true,
                      ),
                      InputField(
                        title: 'Initial walkthrough notes',
                        maxLines: 5,
                        hintText: data?.notes,
                        onChanged: (value) {
                          setState(() {
                            entryData?.data?.initialWalkthrough?.notes = value;
                          });
                        },
                      ),
                      // SizedBox(height: -10),
                      ImageInputField(
                        deleteImage: (index) {
                          setState(() {
                            entryData?.data?.initialWalkthrough
                                ?.heatingSystemPic = null;
                          });
                        },
                        isRequired: isEmptyHeatPic,
                        label: 'Picture of heating system *',
                        url: urlHandler(data?.heatingSystemPic),
                        doesItExpand: false,
                        addImage: (url) {
                          setState(() {
                            isEmptyHeatPic = false;
                            entryData?.data?.initialWalkthrough
                                ?.heatingSystemPic = url;
                          });
                        },
                        isImageLoading: (bool isLoading) {
                          setState(() {
                            isImageLoading = isLoading;
                          });
                        },
                      ),
                      ImageInputField(
                        deleteImage: (index) {
                          setState(() {
                            entryData?.data?.initialWalkthrough
                                ?.waterHeaterPic = null;
                          });
                        },
                        isRequired: isEmptyWaterPic,
                        url: urlHandler(data?.waterHeaterPic),
                        label: 'Picture of water heater *',
                        doesItExpand: false,
                        addImage: (url) {
                          setState(() {
                            isEmptyWaterPic = false;
                            entryData?.data?.initialWalkthrough
                                ?.waterHeaterPic = url;
                          });
                        },
                        isImageLoading: (bool isLoading) {
                          setState(() {
                            isImageLoading = isLoading;
                          });
                        },
                      ),
                      ImageInputField(
                        isRequired: isEmptyWaterPic,
                        label: 'Photos of pre walkthrough concerns',
                        url: data?.concernsPic,
                        doesItExpand: true,
                        addImage: (url) {
                          setState(() {
                            entryData?.data?.initialWalkthrough?.concernsPic
                                ?.add(url);
                          });
                        },
                        deleteImage: (index) {
                          setState(() {
                            entryData?.data?.initialWalkthrough?.concernsPic
                                ?.removeAt(index);
                          });
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
                validate: validate,
                id: widget.id,
                patchData: patch.PatchInitialWalkThroughData(
                  initialWalkthrough: patch.InitialWalkthrough(
                    checklist: patch.Checklist(
                        knobAndTube: data?.checklist?.knobAndTube,
                        knobAndTubeImg: 'https://www.google.co.uk/',
                        abestos: data?.checklist?.abestos,
                        abestosImg: 'https://www.google.co.uk/',
                        titlesOnSite: data?.checklist?.titlesOnSite,
                        titlesOnSiteImg: 'https://www.google.co.uk/',
                        unventedDryers: data?.checklist?.unventedDryers,
                        unventedDryersImg: 'https://www.google.co.uk/',
                        moistureConcerns: data?.checklist?.moistureConcerns,
                        moistureConcernsImg: 'https://www.google.co.uk/'),
                    blowerDoorStatus: data?.blowerDoorStatus ?? false,
                    blowerStartingValue: data?.blowerStartingValue,
                    notes: data?.notes,
                    heatingSystemPic: data?.heatingSystemPic,
                    waterHeaterPic: data?.waterHeaterPic,
                    concernsPic: data?.concernsPic != null &&
                            data!.concernsPic!.isNotEmpty
                        ? data.concernsPic
                        : [],
                  ),
                ).toJson(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
