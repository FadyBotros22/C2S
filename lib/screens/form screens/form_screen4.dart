import 'package:c2s/data/get_entry_response_data.dart';
import 'package:c2s/data/patch%20data/patch_attic_insulation_data.dart'
    as attic;
import 'package:c2s/screens/form%20screens/form_screen3.dart';
import 'package:c2s/screens/form%20screens/form_screen5.dart';
import 'package:c2s/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:c2s/components/image_input_field.dart';
import 'package:c2s/components/input_field.dart';
import 'package:c2s/components/radio_buttons.dart';

import 'package:flutter_svg/svg.dart';
import 'package:c2s/constants.dart';
import 'package:c2s/statics/preferences.dart';
import 'package:c2s/statics/dio.dart';
import 'package:c2s/api_service.dart';
import '../../components/action_button.dart';
import '../../components/transparent_action_button.dart';

class FormScreen4 extends StatefulWidget {
  const FormScreen4({super.key, required this.id});
  final String id;

  @override
  State<FormScreen4> createState() => _FormScreen4State();
}

class _FormScreen4State extends State<FormScreen4> {
  bool? onWorkOrder;
  String? notesOnMeasurements;
  String? notesOnAtticInsulation;
  List<String> atticPics = [];

  bool isEmptyOnWorkOrder = false;
  bool validate() {
    if (onWorkOrder == null) {
      setState(() {
        isEmptyOnWorkOrder = true;
      });
      return false;
    }
    return true;
  }

  void patchEntry() async {
    ApiService apiService = ApiService(DioClass.getDio());
    var token =
        (await Preferences.getPreferences()).getString('token').toString();

    attic.PatchAtticInsulationData patchAtticInsulationData =
        attic.PatchAtticInsulationData(
      atticInsulation: attic.AtticInsulation(
        onWorkOrder: onWorkOrder!,
        checklist: attic.Checklist(
            insulationMarkersInstalled: '',
            lightsDammed: '',
            bathroomFansVentedOut: '',
            bathroomFansDammed: '',
            measurementsAreAccurate: '',
            venilationChecked: '',
            chimneyDammed: ''),
        inaccurateMeasurementsNotes: notesOnMeasurements ?? '',
        notes: notesOnAtticInsulation ?? '',
        atticInsulationPic: atticPics,
      ),
    );

    await apiService.patchAtticInsulation(
        widget.id, token, patchAtticInsulationData);
  }

  void getEntry() async {
    ApiService apiService = ApiService(DioClass.getDio());
    var token =
        (await Preferences.getPreferences()).getString('token').toString();

    GetEntryResponseData getEntryResponseData =
        await apiService.getEntry(token, widget.id);

    setState(() {
      onWorkOrder = getEntryResponseData.data?.atticInsulation?.onWorkOrder;
      notesOnMeasurements = getEntryResponseData
          .data?.atticInsulation?.inaccurateMeasurementsNotes;
      notesOnAtticInsulation =
          getEntryResponseData.data?.atticInsulation?.notes;
      atticPics =
          getEntryResponseData.data?.atticInsulation?.atticInsulationPic ?? [];
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
                                        builder: (context) =>
                                            FormScreen3(id: widget.id),
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
                                'Attic Insulation',
                                style: kAppBarSecondaryTitleTextStyle,
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const LinearProgressIndicator(
                            value: 4.0 / 6.0,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RadioButtons(
                            chooseButton: (value) {
                              setState(() {
                                isEmptyOnWorkOrder = false;
                                onWorkOrder = (value == "Yes");
                              });
                            },
                            isRequired: isEmptyOnWorkOrder,
                            labels: const ['Yes', 'No'],
                            isColumn: false,
                            isSquare: false,
                            title: 'Attic insulation on work order *',
                            activeChoice: onWorkOrder == null
                                ? 0
                                : onWorkOrder!
                                    ? 1
                                    : 2,
                          ),
                          InputField(
                            title: 'Notes on inaccurate measurements',
                            maxLines: 5,
                            hintText: notesOnMeasurements,
                            onChanged: (value) {
                              setState(() {
                                notesOnMeasurements = value;
                              });
                            },
                          ),
                          InputField(
                            title: 'Attic insulation notes',
                            maxLines: 5,
                            hintText: notesOnAtticInsulation,
                            onChanged: (value) {
                              setState(() {
                                notesOnAtticInsulation = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    ImageInputField(
                        deleteImage: (index) {
                          setState(() {
                            atticPics.removeAt(index);
                          });
                        },
                        url: atticPics,
                        addImage: (String url) {
                          setState(() {
                            atticPics.add(url);
                          });
                        },
                        isRequired: false,
                        label: 'Attic Insulation Quality - Misc Pictures',
                        doesItExpand: true),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                            builder: (context) => FormScreen5(id: widget.id),
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
