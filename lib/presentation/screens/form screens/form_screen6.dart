import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/snakbar.dart';
import '../../widgets/title_component.dart';
import 'package:c2s/data/json_data/get_entry_response_data.dart';
import 'package:c2s/data/json_data/patch%20data/patch_final_walkthrough_data.dart'
    as final_walk;
import '../complete_form.dart';
import 'form_screen5.dart';
import 'package:flutter/material.dart';
import '../../widgets/image_input_field.dart';
import '../../widgets/input_field.dart';
import '../../widgets/radio_buttons.dart';
import 'package:c2s/constants.dart';
import '../../widgets/action_button.dart';
import 'package:c2s/statics/preferences.dart';
import '../../../domain/repositories/abstract_entries_repo.dart';
import '../../../injection_container.dart';
import '../../../domain/blocs/form_bloc/form_bloc.dart';
import '../../../domain/blocs/form_bloc/form_event.dart';
import '../../../domain/blocs/form_bloc/form_state.dart' as form_state;

class FormScreen6 extends StatefulWidget {
  const FormScreen6({super.key, required this.id});
  final String id;

  @override
  State<FormScreen6> createState() => _FormScreen6State();
}

class _FormScreen6State extends State<FormScreen6> {
  bool isEmptyIsConfirmedNothingOnSite = false;
  bool isEmptyIsConfirmedBathroom = false;

  bool isLoading = true;
  bool isImageLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FormBloc(getIt<AbstractEntriesRepo>())
        ..add(
          LoadEntryEvent(
            getIt<Preferences>().getData('token').toString(),
            widget.id,
          ),
        ),
      child: BlocConsumer<FormBloc, form_state.FormState>(
        listener: (context, state) async {
          if (state is form_state.FormError) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.message)));
          } else if (state is form_state.FormSubmitted) {
            FocusScope.of(context).unfocus();
            await Future.delayed(Duration(milliseconds: 500));
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => CompleteForm()),
              (route) => false,
            );
          }
        },
        builder: (context, state) {
          if (state is form_state.FormLoading) {
            return Scaffold(
                backgroundColor: Colors.white,
                body: Center(child: CircularProgressIndicator()));
          } else if (state is form_state.FormLoaded) {
            return body(state.entryData, context);
          }
          return Scaffold(backgroundColor: Colors.white);
        },
      ),
    );
  }

  Widget body(GetEntryResponseData? entryData, BuildContext oldContext) {
    final data = entryData?.data?.finalWalkthrough;
    bool validate() {
      if (data?.leftConfirmation == null) {
        setState(() {
          isEmptyIsConfirmedNothingOnSite = true;
        });
        return false;
      } else if (data?.bathroomConfirmation == null) {
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

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, _) {
        if (!didPop) {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => FormScreen5(id: widget.id),
            ),
            (route) => false,
          );
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              TitleComponent(
                  screen: FormScreen5(id: widget.id),
                  title: 'Final Walkthrough',
                  linearProgressValue: 7.0),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InputField(
                        title:
                            'Final notes on job and anything the office may need to know',
                        maxLines: 5,
                        hintText: data?.notes,
                        onChanged: (value) {
                          setState(() {
                            entryData?.data?.finalWalkthrough?.notes = value;
                          });
                        },
                      ),
                      RadioButtons(
                        chooseButton: (value) {
                          setState(() {
                            isEmptyIsConfirmedNothingOnSite = false;
                            entryData?.data?.finalWalkthrough
                                ?.leftConfirmation = (value == "Yes");
                          });
                        },
                        isRequired: isEmptyIsConfirmedNothingOnSite,
                        labels: ['Yes', 'No'],
                        isColumn: false,
                        isSquare: false,
                        title:
                            'I confirm nothing was left behind at customers house and all areas of home were checked *',
                        activeChoice: data?.leftConfirmation == null
                            ? 0
                            : data!.leftConfirmation!
                                ? 1
                                : 2,
                      ),
                      RadioButtons(
                        chooseButton: (value) {
                          setState(() {
                            isEmptyIsConfirmedBathroom = false;
                            entryData?.data?.finalWalkthrough
                                ?.bathroomConfirmation = (value == "Yes");
                          });
                        },
                        isRequired: isEmptyIsConfirmedBathroom,
                        labels: ['Yes', 'No'],
                        isColumn: false,
                        isSquare: false,
                        activeChoice: data?.bathroomConfirmation == null
                            ? 0
                            : data!.bathroomConfirmation!
                                ? 1
                                : 2,
                        title:
                            'I confirm that the bathroom fan is in working order and checked before leaving job site *',
                      ),
                      ImageInputField(
                        deleteImage: (index) {
                          setState(() {
                            entryData?.data?.finalWalkthrough?.qualityPics
                                ?.removeAt(index);
                          });
                        },
                        isRequired: false,
                        label: 'Misc Quality Pictures',
                        doesItExpand: true,
                        url: data?.qualityPics,
                        addImage: (url) {
                          setState(() {
                            entryData?.data?.finalWalkthrough?.qualityPics
                                ?.add(url);
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
                        final formBloc = oldContext.read<FormBloc>();
                        if (validate()) {
                          _showSubmitConfirmationDialog(
                              final_walk.PatchFinalWalkthroughData(
                                finalWalkthrough: final_walk.FinalWalkthrough(
                                  notes: data?.notes,
                                  leftConfirmation: data?.leftConfirmation,
                                  bathroomConfirmation:
                                      data?.bathroomConfirmation!,
                                  qualityPics: data?.qualityPics ?? [],
                                ),
                              ),
                              formBloc);
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showSubmitConfirmationDialog(
      final_walk.PatchFinalWalkthroughData data, FormBloc formBloc) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
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
                        ),
                        onPressed: () {
                          Navigator.of(context).pop(); // Close the dialog
                          formBloc.add(PatchEntryEvent(
                              getIt<Preferences>().getData('token').toString(),
                              widget.id,
                              data.toJson(),
                              'before'));
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
