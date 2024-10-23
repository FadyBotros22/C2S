import 'package:c2s/components/bottom_buttons.dart';
import 'package:c2s/components/snakbar.dart';
import 'package:c2s/components/title_component.dart';
import 'package:c2s/data/get_entry_response_data.dart';
import 'package:c2s/data/patch%20data/patch_wall_insulation_data.dart'
    as insulation;
import 'package:c2s/screens/form%20screens/form_screen4.dart';
import 'package:c2s/screens/form%20screens/form_screen6.dart';
import 'package:flutter/material.dart';
import 'package:c2s/components/input_field.dart';
import 'package:c2s/components/radio_buttons.dart';
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

  bool isLoading = true;

  bool validate() {
    if (onWorkOrder == null) {
      setState(() {
        isEmptyOnWorkOrder = true;
      });
      return false;
    }
    return true;
  }

  Future<bool> patchEntry() async {
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
    try {
      await apiService.patchWallInsulation(
          widget.id, token, patchWallInsulationData);
      return true;
    } catch (e) {
      if (mounted) {
        Snackbar().showSnackBar(
            context, "Error occurred, try connecting to active Network");
      }
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
        onWorkOrder = getEntryResponseData.data?.wallInsulation?.onWorkOrder;
        notes = getEntryResponseData.data?.wallInsulation?.notes;
      });
    } catch (e) {
      if (mounted) {
        Snackbar().showSnackBar(
            context, "Error occurred, try connecting to active Network");
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _loadEntry();
  }

  Future<void> _loadEntry() async {
    setState(() {
      isLoading = true;
    });
    await getEntry();
    setState(() {
      isLoading = false;
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
                screen: FormScreen4(id: widget.id),
                title: 'Wall Insulation',
                linearProgressValue: 5.0),
            isLoading
                ? const Center(
                    heightFactor: 15,
                    child: CircularProgressIndicator(),
                  )
                : Expanded(
                    child: SingleChildScrollView(
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
                  ),
            BottomButtons(
              validate: validate,
              patchEntry: patchEntry,
              nextScreen: FormScreen6(id: widget.id),
              id: widget.id,
            ),
          ],
        ),
      ),
    );
  }
}
