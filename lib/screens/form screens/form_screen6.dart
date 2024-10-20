import 'package:c2s/components/snakbar.dart';
import 'package:c2s/components/title_component.dart';
import 'package:c2s/data/get_entry_response_data.dart';
import 'package:c2s/data/patch%20data/patch_final_walkthrough_data.dart'
    as final_walk;
import 'package:c2s/screens/complete_form.dart';
import 'package:c2s/screens/form%20screens/form_screen5.dart';
import 'package:flutter/material.dart';
import 'package:c2s/components/image_input_field.dart';
import 'package:c2s/components/input_field.dart';
import 'package:c2s/components/radio_buttons.dart';
import 'package:c2s/constants.dart';

import '../../components/action_button.dart';
import 'package:c2s/statics/preferences.dart';
import 'package:c2s/statics/dio.dart';
import 'package:c2s/api_service.dart';

class FormScreen6 extends StatefulWidget {
  const FormScreen6({super.key, required this.id});
  final String id;

  @override
  State<FormScreen6> createState() => _FormScreen6State();
}

class _FormScreen6State extends State<FormScreen6> {
  String? notes;
  bool? isConfirmedNothingOnSite;
  bool? isConfirmedBathroom;
  List<String> miscPics = [];

  bool isEmptyIsConfirmedNothingOnSite = false;
  bool isEmptyIsConfirmedBathroom = false;

  bool loading = true;

  bool validate() {
    if (isConfirmedNothingOnSite == null) {
      setState(() {
        isEmptyIsConfirmedNothingOnSite = true;
      });
      return false;
    } else if (isConfirmedBathroom == null) {
      setState(() {
        isEmptyIsConfirmedBathroom = true;
      });
      return false;
    }
    return true;
  }

  void patchEntry() async {
    ApiService apiService = ApiService(DioClass.getDio());
    var token =
        (await Preferences.getPreferences()).getString('token').toString();

    final_walk.PatchFinalWalkthroughData patchFinalWalkthroughData =
        final_walk.PatchFinalWalkthroughData(
            finalWalkthrough: final_walk.FinalWalkthrough(
                checklist: final_walk.Checklist(
                    airSealing: '',
                    zonalPressure: '',
                    accuVents: '',
                    finishedAttic: '',
                    certificateofInsulation: '',
                    generalQualityPictures: ''),
                selfHelpImgs: ['https://www.google.co.uk/'],
                contractChanges: false,
                changeOrderBy: '',
                changeOrdersSpecification: '',
                changeOrderPics: ['https://www.google.co.uk/'],
                notes: notes ?? '',
                postBlowerDoor: 0,
                postBlowerDoorPic: 'https://www.google.co.uk/',
                certificateOfInsulationPostedNearElectricalPanel:
                    'certificateOfInsulationPostedNearElectricalPanel',
                leftConfirmation: isConfirmedNothingOnSite!,
                bathroomConfirmation: isConfirmedBathroom!,
                qualityPics: miscPics,
                customerReview: 'customerReview',
                contactMethod: 'contactMethod',
                email: 'email',
                phoneNumber: 'phoneNumber'));
    try {
      await apiService.patchFinal(widget.id, token, patchFinalWalkthroughData);
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
        notes = getEntryResponseData.data?.finalWalkthrough!.notes;
        isConfirmedBathroom =
            getEntryResponseData.data?.finalWalkthrough!.bathroomConfirmation;
        isConfirmedNothingOnSite =
            getEntryResponseData.data?.finalWalkthrough!.leftConfirmation;
        miscPics =
            getEntryResponseData.data?.finalWalkthrough?.qualityPics ?? [];
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
                screen: FormScreen5(id: widget.id),
                title: 'Final Walkthrough',
                linearProgressValue: 6.0),
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
                          InputField(
                            title:
                                'Final notes on job and anything the office may need to know',
                            maxLines: 5,
                            hintText: notes,
                            onChanged: (value) {
                              setState(() {
                                notes = value;
                              });
                            },
                          ),
                          RadioButtons(
                            chooseButton: (value) {
                              setState(() {
                                isEmptyIsConfirmedNothingOnSite = false;
                                isConfirmedNothingOnSite = (value == "Yes");
                              });
                            },
                            isRequired: isEmptyIsConfirmedNothingOnSite,
                            labels: ['Yes', 'No'],
                            isColumn: false,
                            isSquare: false,
                            title:
                                'I confirm nothing was left behind at customers house and all areas of home were checked *',
                            activeChoice: isConfirmedNothingOnSite == null
                                ? 0
                                : isConfirmedNothingOnSite!
                                    ? 1
                                    : 2,
                          ),
                          RadioButtons(
                            chooseButton: (value) {
                              setState(() {
                                isEmptyIsConfirmedBathroom = false;
                                isConfirmedBathroom = (value == "Yes");
                              });
                            },
                            isRequired: isEmptyIsConfirmedBathroom,
                            labels: ['Yes', 'No'],
                            isColumn: false,
                            isSquare: false,
                            activeChoice: isConfirmedBathroom == null
                                ? 0
                                : isConfirmedBathroom!
                                    ? 1
                                    : 2,
                            title:
                                'I confirm that the bathroom fan is in working order and checked before leaving job site *',
                          ),
                          ImageInputField(
                            deleteImage: (index) {
                              setState(() {
                                miscPics.removeAt(index);
                              });
                            },
                            isRequired: false,
                            label: 'Misc Quality Pictures',
                            doesItExpand: true,
                            url: miscPics,
                            addImage: (url) {
                              setState(() {
                                miscPics.add(url);
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
            Container(
              margin: const EdgeInsets.only(
                  left: 16, right: 16, bottom: 44, top: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ActionButton(
                    label: 'Complete Checklist',
                    onPressed: () {
                      if (validate()) {
                        _showSubmitConfirmationDialog(context);
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showSubmitConfirmationDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible:
          false, // Prevents closing the dialog by tapping outside
      builder: (BuildContext context) {
        return AlertDialog(
          alignment: Alignment.center,
          title: const Text(
            'Submit Form',
            style: kLogoutAlertTitleTextStyle,
            textAlign: TextAlign.center,
          ),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'You will not be able to edit the form after pressing submit, are you sure?',
                  style: kLogoutAlertSecondaryTitleTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 30),
              Divider(),
            ],
          ),
          actions: [
            Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: TextButton(
                    child: const Text('Yes'),
                    onPressed: () {
                      // Add your submit logic here
                      patchEntry();
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CompleteForm(),
                        ),
                        (route) => false,
                      );
                    },
                  ),
                ),
                Expanded(
                  child: TextButton(
                    child: const Text('No'),
                    onPressed: () {
                      Navigator.of(context).pop(); // Close the dialog
                    },
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
