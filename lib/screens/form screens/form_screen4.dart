import 'package:c2s/components/bottom_buttons.dart';
import 'package:c2s/components/snakbar.dart';
import 'package:c2s/components/title_component.dart';
import 'package:c2s/data/json_data/get_entry_response_data.dart';
import 'package:c2s/data/json_data/patch%20data/patch_attic_insulation_data.dart'
    as attic;
import 'package:c2s/screens/form%20screens/form_screen3.dart';
import 'package:c2s/screens/form%20screens/form_screen5.dart';
import 'package:flutter/material.dart';
import 'package:c2s/components/image_input_field.dart';
import 'package:c2s/components/input_field.dart';
import 'package:c2s/components/radio_buttons.dart';
import 'package:c2s/statics/preferences.dart';
import '../../domain/repositories/abstract_get_entries_repo.dart';
import '../../domain/repositories/abstract_post_entry_repo.dart';
import '../../injection_container.dart';

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

  bool isLoading = true;
  bool isImageLoading = false;

  bool validate() {
    if (onWorkOrder == null) {
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

  Future<bool> patchEntry() async {
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
    return await getIt<AbstractPostEntryRepo>().patchEntry(
        context,
        getIt<Preferences>().getData('token').toString(),
        widget.id,
        patchAtticInsulationData.toJson());
  }

  Future<void> getEntry() async {
    GetEntryResponseData getEntryResponseData =
        await getIt<AbstractGetEntriesRepo>().getEntry(
            context,
            getIt<Preferences>().getData('token').toString(),
            widget.id.toString());

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
                screen: FormScreen3(id: widget.id),
                title: 'Attic Insulation',
                linearProgressValue: 4.0),
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
                              isImageLoading: (bool isLoading) {
                                setState(() {
                                  isImageLoading = isLoading;
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
