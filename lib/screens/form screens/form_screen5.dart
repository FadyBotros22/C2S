import 'package:c2s/data/get_entry_response_data.dart';
import 'package:c2s/data/patch%20data/patch_wall_insulation_data.dart'
    as insulation;
import 'package:c2s/screens/form%20screens/form_screen4.dart';
import 'package:c2s/screens/form%20screens/form_screen6.dart';
import 'package:c2s/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:c2s/components/input_field.dart';
import 'package:c2s/components/radio_buttons.dart';

import 'package:flutter_svg/svg.dart';
import 'package:c2s/constants.dart';

import '../../components/action_button.dart';
import '../../components/transparent_action_button.dart';
import 'package:c2s/statics/preferences.dart';
import 'package:c2s/statics/dio.dart';
import 'package:c2s/api_service.dart';

class FormScreen5 extends StatefulWidget {
  const FormScreen5({super.key, required this.id});
  final String id;

  @override
  State<FormScreen5> createState() => _FormScreen5State();
}

class _FormScreen5State extends State<FormScreen5> {
  bool? onWorkOrder;
  String? notes;
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

    insulation.PatchWallInsulationData patchWallInsulationData =
        insulation.PatchWallInsulationData(
            wallInsulation: insulation.WallInsulation(
                onWorkOrder: onWorkOrder!,
                checklist: insulation.Checklist(
                    wallMeasurementsAccurate: false,
                    drainagePlaneInstalled: false,
                    sidingPutBack: false,
                    cornerBracesChecked: false,
                    blockersChecked: false),
                notes: notes ?? ''));

    await apiService.patchWallInsulation(
        widget.id, token, patchWallInsulationData);
  }

  void getEntry() async {
    ApiService apiService = ApiService(DioClass.getDio());
    var token =
        (await Preferences.getPreferences()).getString('token').toString();

    GetEntryResponseData getEntryResponseData =
        await apiService.getEntry(token, widget.id);

    setState(() {
      onWorkOrder = getEntryResponseData.data?.wallInsulation?.onWorkOrder;
      notes = getEntryResponseData.data?.wallInsulation?.notes;
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
                                            FormScreen4(id: widget.id),
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
                                'Wall Insulation',
                                style: kAppBarSecondaryTitleTextStyle,
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const LinearProgressIndicator(
                            value: 5.0 / 6.0,
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
                            title: 'Wall insulation on work order *',
                            activeChoice: onWorkOrder == null
                                ? 0
                                : onWorkOrder!
                                    ? 1
                                    : 2,
                          ),
                          InputField(
                            title: 'Inaccurate wall measurement notes',
                            maxLines: 6,
                            hintText: notes,
                            onChanged: (value) {
                              setState(() {
                                notes = value;
                              });
                            },
                          ),
                        ],
                      ),
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
                            builder: (context) => FormScreen6(id: widget.id),
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
