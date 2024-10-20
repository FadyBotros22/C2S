import 'package:c2s/components/bottom_buttons.dart';
import 'package:c2s/components/title_component.dart';
import 'package:c2s/data/get_entry_response_data.dart';
import 'package:c2s/data/patch%20data/patch_attic_insulation_data.dart'
    as attic;
import 'package:c2s/screens/form%20screens/form_screen3.dart';
import 'package:c2s/screens/form%20screens/form_screen5.dart';
import 'package:flutter/material.dart';
import 'package:c2s/components/image_input_field.dart';
import 'package:c2s/components/input_field.dart';
import 'package:c2s/components/radio_buttons.dart';
import 'package:c2s/statics/preferences.dart';
import 'package:c2s/statics/dio.dart';
import 'package:c2s/api_service.dart';

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

  bool loading = true;

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

  Future<void> getEntry() async {
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
                screen: FormScreen3(id: widget.id),
                title: 'Attic Insulation',
                linearProgressValue: 4.0),
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
            BottomButtons(
              validate: validate,
              previousScreen: FormScreen3(id: widget.id),
              patchEntry: patchEntry,
              nextScreen: FormScreen5(id: widget.id),
              id: widget.id,
            ),
          ],
        ),
      ),
    );
  }
}
