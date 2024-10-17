import 'package:c2s/components/image_input_field.dart';
import 'package:c2s/components/input_field.dart';
import 'package:c2s/components/radio_buttons.dart';
import 'package:c2s/data/get_entry_response_data.dart';
import 'package:c2s/data/patch%20data/patch_air_sealing_data.dart'
    as air_sealing;
import 'package:c2s/screens/form%20screens/form_screen2.dart';
import 'package:c2s/screens/form%20screens/form_screen4.dart';
import 'package:c2s/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:c2s/constants.dart';
import 'package:c2s/statics/preferences.dart';
import 'package:c2s/statics/dio.dart';
import 'package:c2s/api_service.dart';

import '../../components/action_button.dart';
import '../../components/transparent_action_button.dart';

class FormScreen3 extends StatefulWidget {
  const FormScreen3({super.key, required this.id});
  final String id;

  @override
  State<FormScreen3> createState() => _FormScreen3State();
}

class _FormScreen3State extends State<FormScreen3> {
  bool? onWorkOrder;
  String? sealingNotes;
  List<String> airSealingPics = [];

  bool isEmptyOnWorkOrder = false;
  bool isEmptyAirSealingPics = false;

  bool validate() {
    if (onWorkOrder == null) {
      setState(() {
        isEmptyOnWorkOrder = true;
      });
      return false;
    } else if (airSealingPics.isEmpty) {
      setState(() {
        isEmptyAirSealingPics = true;
      });
      return false;
    }
    return true;
  }

  void patchEntry() async {
    ApiService apiService = ApiService(DioClass.getDio());
    var token =
        (await Preferences.getPreferences()).getString('token').toString();

    air_sealing.PatchAirSealingData patchAirSealingData =
        air_sealing.PatchAirSealingData(
            airSealing: air_sealing.AirSealing(
                onWorkOrder: onWorkOrder!,
                checklist: air_sealing.Checklist(
                    mainTopPlateSealed: '',
                    wetWallSealed: '',
                    chimneySealed: '',
                    exteriorPlatesSealed: '',
                    bhatroomFansSealed: '',
                    gableEndsSealed: '',
                    atticAccessSealed: '',
                    basementSealed: ''),
                notes: sealingNotes ?? '',
                sealingQualityPic: airSealingPics));
    await apiService.patchAirSealing(widget.id, token, patchAirSealingData);
  }

  void getEntry() async {
    ApiService apiService = ApiService(DioClass.getDio());
    var token =
        (await Preferences.getPreferences()).getString('token').toString();

    GetEntryResponseData getEntryResponseData =
        await apiService.getEntry(token, widget.id);

    setState(() {
      onWorkOrder = getEntryResponseData.data?.airSealing?.onWorkOrder;
      sealingNotes = getEntryResponseData.data?.airSealing?.notes;
      airSealingPics =
          getEntryResponseData.data?.airSealing?.sealingQualityPic ?? [];
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
                                            FormScreen2(id: widget.id),
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
                                'Air Sealing',
                                style: kAppBarSecondaryTitleTextStyle,
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const LinearProgressIndicator(
                            value: 3.0 / 6.0,
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
                                if (value == "Yes") {
                                  onWorkOrder = true;
                                } else {
                                  onWorkOrder = false;
                                }
                              });
                            },
                            isRequired: isEmptyOnWorkOrder,
                            labels: ['Yes', 'No'],
                            isColumn: false,
                            isSquare: false,
                            title: 'Air Sealing on work order? *',
                            activeChoice: onWorkOrder == null
                                ? 0
                                : onWorkOrder!
                                    ? 1
                                    : 2,
                          ),
                          InputField(
                            title: 'Air sealing notes',
                            hintText: sealingNotes,
                            maxLines: 5,
                            onChanged: (value) {
                              setState(() {
                                sealingNotes = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    ImageInputField(
                      isRequired: isEmptyAirSealingPics,
                      label: 'Air sealing quality pictures *',
                      doesItExpand: true,
                      url: airSealingPics,
                      addImage: (String url) {
                        setState(() {
                          airSealingPics.add(url);
                          isEmptyAirSealingPics = false;
                        });
                      },
                      deleteImage: (index) {
                        setState(() {
                          airSealingPics.removeAt(index);
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
                            builder: (context) => FormScreen4(id: widget.id),
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
