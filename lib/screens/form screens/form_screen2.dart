import 'package:c2s/components/action_button.dart';
import 'package:c2s/components/checklist_component.dart';
import 'package:c2s/components/image_input_field.dart';
import 'package:c2s/components/input_field.dart';
import 'package:c2s/components/radio_buttons.dart';
import 'package:c2s/components/transparent_action_button.dart';
import 'package:c2s/data/get_entry_response_data.dart';
import 'package:c2s/data/patch%20data/patch_initial_walk_through_data.dart'
    as patch;
import 'package:c2s/screens/form%20screens/form_screen1.dart';
import 'package:c2s/screens/form%20screens/form_screen3.dart';
import 'package:c2s/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:c2s/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
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

  void patchEntry() async {
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
    await apiService.patchInitial(
        widget.id, token, patchInitialWalkThroughData);
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

  void getEntry() async {
    ApiService apiService = ApiService(DioClass.getDio());
    var token =
        (await Preferences.getPreferences()).getString('token').toString();

    GetEntryResponseData getEntryResponseData =
        await apiService.getEntry(token, widget.id);

    setState(() {
      knob =
          getEntryResponseData.data?.initialWalkthrough?.checklist?.knobAndTube;
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
      heatPic = getEntryResponseData.data?.initialWalkthrough?.heatingSystemPic;
      waterPic = getEntryResponseData.data?.initialWalkthrough?.waterHeaterPic;
      corners =
          getEntryResponseData.data?.initialWalkthrough?.concernsPic ?? [];
    });
  }

  @override
  void initState() {
    super.initState();
    getEntry();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 20,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                      alignment:
                                          AlignmentDirectional.centerStart,
                                      padding: const EdgeInsets.all(0),
                                      fixedSize: const Size(10, 10)),
                                  onPressed: () {
                                    Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => FormScreen1(
                                          id: widget.id,
                                        ),
                                      ),
                                      (route) => false,
                                    );
                                  },
                                  child: SvgPicture.asset(
                                      'assets/icons/ic_back.svg'),
                                ),
                              ),
                              const SizedBox(width: 15),
                              const Text(
                                'Initial Walkthrough',
                                style: kAppBarSecondaryTitleTextStyle,
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          const LinearProgressIndicator(
                            value: 2.0 / 6.0,
                          ),
                          const SizedBox(height: 18),
                          const Text(
                            'It\'s incredibly important to ensure a proper initial walk through is conducted. Please ensure the following barriers will not be an issue to completing work.',
                            style: kParagraphTextStyle,
                          ),
                          const SizedBox(height: 5),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                if (isEmptyCheckList)
                                  TextSpan(
                                    text: 'This field is Required\n',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                TextSpan(
                                    text: 'Checklist ',
                                    style: kAppBarSecondaryTitleTextStyle),
                                TextSpan(
                                    text: '*',
                                    style: TextStyle(color: Colors.red)),
                              ],
                            ),
                          ),
                          SizedBox(height: 6),
                        ],
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
                    Container(
                      margin: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                        ],
                      ),
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
            Container(
              margin: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ActionButton(
                    label: 'Save and next',
                    onPressed: () {
                      if (validate()) {
                        patchEntry();
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FormScreen3(id: widget.id),
                          ),
                          (route) => false,
                        );
                      }
                    },
                  ),
                  TransparentActionButton(
                    onPressed: () {
                      if (validate()) {
                        patchEntry();
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                          (route) => false,
                        );
                      }
                    },
                    label: 'Save for now',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> urlHandler(String? object) {
  if (object == null) {
    return [];
  } else
    return [object];
}
