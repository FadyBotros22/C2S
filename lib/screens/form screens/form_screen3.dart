import 'package:c2s/components/bottom_buttons.dart';
import 'package:c2s/components/image_input_field.dart';
import 'package:c2s/components/input_field.dart';
import 'package:c2s/components/radio_buttons.dart';
import 'package:c2s/components/snakbar.dart';
import 'package:c2s/components/title_component.dart';
import 'package:c2s/data/get_entry_response_data.dart';
import 'package:c2s/data/patch%20data/patch_air_sealing_data.dart'
    as air_sealing;
import 'package:c2s/screens/form%20screens/form_screen2.dart';
import 'package:c2s/screens/form%20screens/form_screen4.dart';
import 'package:flutter/material.dart';
import 'package:c2s/statics/preferences.dart';
import 'package:c2s/statics/dio.dart';
import 'package:c2s/api_service.dart';

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

  bool loading = true;

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
    try {
      await apiService.patchAirSealing(widget.id, token, patchAirSealingData);
    } catch (e) {
      Snackbar().showSnackBar(
          context, "Error occurred, try connecting to active Network");
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
        onWorkOrder = getEntryResponseData.data?.airSealing?.onWorkOrder;
        sealingNotes = getEntryResponseData.data?.airSealing?.notes;
        airSealingPics =
            getEntryResponseData.data?.airSealing?.sealingQualityPic ?? [];
      });
    } catch (e) {
      Snackbar().showSnackBar(
          context, "Error occurred, try connecting to active Network");
    }
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
                screen: FormScreen2(id: widget.id),
                title: 'Air Sealling',
                linearProgressValue: 3.0),
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
            BottomButtons(
              validate: validate,
              previousScreen: FormScreen2(id: widget.id),
              patchEntry: patchEntry,
              nextScreen: FormScreen4(id: widget.id),
              id: widget.id,
            ),
          ],
        ),
      ),
    );
  }
}
