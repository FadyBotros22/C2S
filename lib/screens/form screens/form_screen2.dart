import 'package:c2s/components/bottom_buttons.dart';
import 'package:c2s/components/checklist_component.dart';
import 'package:c2s/components/image_input_field.dart';
import 'package:c2s/components/input_field.dart';
import 'package:c2s/components/radio_buttons.dart';
import 'package:c2s/components/snakbar.dart';
import 'package:c2s/components/title_component.dart';
import 'package:c2s/data/get_entry_response_data.dart';
import 'package:c2s/data/patch%20data/patch_initial_walk_through_data.dart'
    as patch;
import 'package:c2s/screens/form%20screens/form_screen1.dart';
import 'package:c2s/screens/form%20screens/form_screen3.dart';
import 'package:flutter/material.dart';
import 'package:c2s/constants.dart';
import 'package:c2s/api_service.dart';
import 'package:c2s/statics/preferences.dart';
import 'package:c2s/statics/dio.dart';

class FormScreen2 extends StatefulWidget {
  const FormScreen2({super.key, required this.id});
  final String id;

  @override
  State<FormScreen2> createState() => _FormScreen2State();
}

class _FormScreen2State extends State<FormScreen2> {
  bool? knob;
  bool? abestos;
  bool? tiles;
  bool? dryers;
  bool? moisture;
  bool? blowerDoor;
  int? blowerValue;
  String? walkthroughNotes;
  String? heatPic;
  String? waterPic;
  List<String> corners = [];

  bool isEmptyHeatPic = false;
  bool isEmptyWaterPic = false;
  bool isEmptyCheckList = false;
  bool isEmptyBlowerValue = false;

  bool loading = true;

  Future<bool> patchEntry() async {
    ApiService apiService = ApiService(DioClass.getDio());
    var token =
        (await Preferences.getPreferences()).getString('token').toString();

    patch.PatchInitialWalkThroughData patchInitialWalkThroughData =
        patch.PatchInitialWalkThroughData(
      initialWalkthrough: patch.InitialWalkthrough(
          checklist: patch.Checklist(
              knobAndTube: knob ?? false,
              knobAndTubeImg: 'https://www.google.co.uk/',
              abestos: abestos ?? false,
              abestosImg: 'https://www.google.co.uk/',
              titlesOnSite: tiles ?? false,
              titlesOnSiteImg: 'https://www.google.co.uk/',
              unventedDryers: dryers ?? false,
              unventedDryersImg: 'https://www.google.co.uk/',
              moistureConcerns: moisture ?? false,
              moistureConcernsImg: 'https://www.google.co.uk/'),
          blowerDoorStatus: blowerDoor ?? false,
          blowerStartingValue: blowerValue!,
          startingBlowerDoorPic: 'https://www.google.co.uk/',
          notes: walkthroughNotes ?? '',
          heatingSystemPic: heatPic!,
          waterHeaterPic: waterPic!,
          concernsPic:
              corners.isNotEmpty ? corners : ['https://www.google.co.uk/']),
    );
    try {
      await apiService.patchInitial(
          widget.id, token, patchInitialWalkThroughData);
      return true;
    } catch (e) {
      return false;
    }
  }

  bool validate() {
    if (knob == null ||
        abestos == null ||
        tiles == null ||
        dryers == null ||
        moisture == null) {
      setState(() {
        isEmptyCheckList = true;
      });
      return false;
    } else if (heatPic == null) {
      setState(() {
        isEmptyHeatPic = true;
      });
      return false;
    } else if (waterPic == null) {
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

  Future<void> getEntry() async {
    ApiService apiService = ApiService(DioClass.getDio());
    var token =
        (await Preferences.getPreferences()).getString('token').toString();
    try {
      GetEntryResponseData getEntryResponseData =
          await apiService.getEntry(token, widget.id);

      setState(() {
        knob = getEntryResponseData
            .data?.initialWalkthrough?.checklist?.knobAndTube;
        abestos =
            getEntryResponseData.data?.initialWalkthrough?.checklist?.abestos;
        tiles = getEntryResponseData
            .data?.initialWalkthrough?.checklist?.titlesOnSite;
        dryers = getEntryResponseData
            .data?.initialWalkthrough?.checklist?.unventedDryers;
        moisture = getEntryResponseData
            .data?.initialWalkthrough?.checklist?.moistureConcerns;
        blowerDoor =
            getEntryResponseData.data?.initialWalkthrough?.blowerDoorStatus;
        blowerValue =
            getEntryResponseData.data?.initialWalkthrough?.blowerStartingValue;
        walkthroughNotes = getEntryResponseData.data?.initialWalkthrough?.notes;
        heatPic =
            getEntryResponseData.data?.initialWalkthrough?.heatingSystemPic;
        waterPic =
            getEntryResponseData.data?.initialWalkthrough?.waterHeaterPic;
        corners =
            getEntryResponseData.data?.initialWalkthrough?.concernsPic ?? [];
      });
    } catch (e) {
      Snackbar().showSnackBar(
          context, "Error occurred, try connecting to active Network");
    }
  }

  List<String> urlHandler(String? object) {
    if (object == null) {
      return [];
    } else
      return [object];
  }

  @override
  void initState() {
    super.initState();
    _loadEntry();
  }

  Future<void> _loadEntry() async {
    setState(() {
      loading = true;
    });
    await getEntry();
    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            TitleComponent(
                screen: FormScreen1(id: widget.id),
                title: 'Initial Walkthrough',
                linearProgressValue: 2.0),
            loading
                ? const Center(
                    heightFactor: 15,
                    child: CircularProgressIndicator(),
                  )
                : Expanded(
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
                            padding: const EdgeInsets.only(
                                left: 16, top: 16, bottom: 5),
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
                                knob = updateChoice(value);
                              });
                            },
                            title: 'Knob & Tube',
                            activeChoice: getActiveChoice(knob),
                          ),
                          ChecklistComponent(
                            chooseButtons: (value) {
                              setState(() {
                                abestos = updateChoice(value);
                              });
                            },
                            title: 'Abestos',
                            activeChoice: getActiveChoice(abestos),
                          ),
                          ChecklistComponent(
                            chooseButtons: (value) {
                              setState(() {
                                tiles = updateChoice(value);
                              });
                            },
                            title: '12 x 12 tiles on site',
                            activeChoice: getActiveChoice(tiles),
                          ),
                          ChecklistComponent(
                            chooseButtons: (value) {
                              setState(() {
                                dryers = updateChoice(value);
                              });
                            },
                            title: 'Unvented dryers',
                            activeChoice: getActiveChoice(dryers),
                          ),
                          ChecklistComponent(
                            chooseButtons: (value) {
                              setState(() {
                                moisture = updateChoice(value);
                              });
                            },
                            title: 'Moisture concerns',
                            activeChoice: getActiveChoice(moisture),
                          ),
                          RadioButtons(
                            chooseButton: (value) {
                              setState(() {
                                blowerDoor = updateChoice(value);
                              });
                            },
                            isRequired: false,
                            title: 'Was blower door completed?',
                            labels: const ['Yes', 'No'],
                            isColumn: false,
                            isSquare: false,
                            activeChoice: getActiveChoice(blowerDoor),
                          ),
                          InputField(
                            title: 'Blower door starting value *',
                            hintText: '${blowerValue ?? ''}',
                            onChanged: (value) {
                              setState(() {
                                blowerValue = int.parse(value);
                                isEmptyBlowerValue = false;
                              });
                            },
                            isNumber: true,
                          ),
                          InputField(
                            title: 'Initial walkthrough notes',
                            maxLines: 5,
                            hintText: walkthroughNotes,
                            onChanged: (value) {
                              setState(() {
                                walkthroughNotes = value;
                              });
                            },
                          ),
                          ImageInputField(
                            deleteImage: (index) {
                              setState(() {
                                heatPic = null;
                              });
                            },
                            isRequired: isEmptyHeatPic,
                            label: 'Picture of heating system *',
                            url: urlHandler(heatPic),
                            doesItExpand: false,
                            addImage: (url) {
                              setState(() {
                                isEmptyHeatPic = false;
                                heatPic = url;
                              });
                            },
                          ),
                          ImageInputField(
                            deleteImage: (index) {
                              setState(() {
                                waterPic = null;
                              });
                            },
                            isRequired: isEmptyWaterPic,
                            url: urlHandler(waterPic),
                            label: 'Picture of water heater *',
                            doesItExpand: false,
                            addImage: (url) {
                              setState(() {
                                isEmptyWaterPic = false;
                                waterPic = url;
                              });
                            },
                          ),
                          ImageInputField(
                            isRequired: isEmptyWaterPic,
                            label: 'Photos of pre walkthrough concerns',
                            url: corners,
                            doesItExpand: true,
                            addImage: (url) {
                              setState(() {
                                print('url added $url');
                                corners.add(url);
                              });
                            },
                            deleteImage: (index) {
                              setState(() {
                                corners.removeAt(index);
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
            BottomButtons(
              validate: validate,
              previousScreen: FormScreen1(id: widget.id),
              patchEntry: patchEntry,
              nextScreen: FormScreen3(id: widget.id),
              id: widget.id,
            ),
          ],
        ),
      ),
    );
  }
}
