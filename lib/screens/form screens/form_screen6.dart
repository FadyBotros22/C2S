import 'package:c2s/components/snakbar.dart';
import 'package:c2s/components/title_component.dart';
import 'package:c2s/data/json_data/get_entry_response_data.dart';
import 'package:c2s/data/json_data/patch%20data/patch_final_walkthrough_data.dart'
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
import '../../domain/repositories/abstract_get_entries_repo.dart';
import '../../domain/repositories/abstract_post_entry_repo.dart';
import '../../injection_container.dart';

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

  bool isLoading = true;
  bool isImageLoading = false;

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
    } else if (isImageLoading) {
      Snackbar().showSnackBar(context, "Image is uploading, please wait");
      return false;
    }
    return true;
  }

  Future<bool> patchEntry() async {
    final_walk.PatchFinalWalkthroughData patchFinalWalkthroughData =
        final_walk.PatchFinalWalkthroughData(
            finalWalkthrough: final_walk.FinalWalkthrough(
      checklist: final_walk.Checklist(
        airSealing: '',
        zonalPressure: '',
        accuVents: '',
        finishedAttic: '',
        certificateofInsulation: '',
        generalQualityPictures: '',
      ),
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
      phoneNumber: 'phoneNumber',
    ));
    return await getIt<AbstractPostEntryRepo>().patchEntry(
        context,
        getIt<Preferences>().getData('token').toString(),
        widget.id,
        patchFinalWalkthroughData.toJson());
  }

  Future<void> getEntry() async {
    GetEntryResponseData getEntryResponseData =
        await getIt<AbstractGetEntriesRepo>().getEntry(
            context,
            getIt<Preferences>().getData('token').toString(),
            widget.id.toString());

    setState(() {
      notes = getEntryResponseData.data?.finalWalkthrough!.notes;
      isConfirmedBathroom =
          getEntryResponseData.data?.finalWalkthrough!.bathroomConfirmation;
      isConfirmedNothingOnSite =
          getEntryResponseData.data?.finalWalkthrough!.leftConfirmation;
      miscPics = getEntryResponseData.data?.finalWalkthrough?.qualityPics ?? [];
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
                screen: FormScreen5(id: widget.id),
                title: 'Final Walkthrough',
                linearProgressValue: 6.0),
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
                            isImageLoading: (bool isLoading) {
                              setState(() {
                                isImageLoading = isLoading;
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
          contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
          actionsPadding: EdgeInsets.all(0),
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
            ],
          ),
          actions: [
            Column(
              children: [
                Divider(
                  color: Colors.grey,
                  indent: 0,
                  height: 1,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        child: Text(
                          'Yes',
                          style: kMcqLabelTextStyle.copyWith(
                              color: Color(0xff007AFF), fontSize: 17),
                        ), // Yes button
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
                    SizedBox(
                      height: 80,
                      child: VerticalDivider(
                        indent: 0,
                        endIndent: 0,
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        child: Text(
                          'No',
                          style: kLogoutAlertTitleTextStyle.copyWith(
                              color: Color(0xff007AFF)),
                        ), // No but
                        onPressed: () {
                          Navigator.of(context).pop(); // Close the dialog
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
