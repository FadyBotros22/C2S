import 'package:c2s/presentation/screens/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/get_entry_models/final_walkthrough/final_walkthrough.dart';
import '../../../data/models/patch_models/patch_final_walkthrough/patch_final_walkthrough.dart';
import '../../widgets/snakbar.dart';
import '../../widgets/title_component.dart';
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
          if (state.onNavigate == true) {
            FocusScope.of(context).unfocus();
            await Future.delayed(Duration(milliseconds: 500));
            if (context.mounted) {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => CompleteForm()),
                (route) => false,
              );
            }
          }
        },
        builder: body,
      ),
    );
  }

  Widget body(BuildContext context, state) {
    if ((state as form_state.FormScreen).errorMessage != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Snackbar().showSnackBar(
          context,
          state.errorMessage!,
        );
      });
    }

    final entryData = state.entryData?.data?.finalWalkthrough;

    bool validate() {
      if (entryData?.leftConfirmation == null) {
        setState(() {
          isEmptyIsConfirmedNothingOnSite = true;
        });
        return false;
      } else if (entryData?.bathroomConfirmation == null) {
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
        body: RefreshIndicator(
          onRefresh: () async {
            Future.delayed(Duration(seconds: 2));
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => FormScreen6(
                  id: widget.id,
                ),
              ),
              (route) => false,
            );
          },
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TitleComponent(
                  title: 'Final Walkthrough',
                  linearProgressValue: 7.0,
                  screen: FormScreen5(id: widget.id),
                ),
                state.isLoading == true
                    ? Center(child: CircularProgressIndicator())
                    : Expanded(
                        child: SingleChildScrollView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InputField(
                                title:
                                    'Final notes on job and anything the office may need to know',
                                maxLines: 5,
                                hintText: entryData?.notes,
                                onChanged: (value) {
                                  context
                                      .read<FormBloc>()
                                      .add(UpdateData(finalNotes: value));
                                },
                              ),
                              RadioButtons(
                                chooseButton: (value) {
                                  setState(() {
                                    isEmptyIsConfirmedNothingOnSite = false;
                                    context.read<FormBloc>().add(UpdateData(
                                        leftConfirmation: (value == "Yes")));
                                  });
                                },
                                isRequired: isEmptyIsConfirmedNothingOnSite,
                                labels: ['Yes', 'No'],
                                isColumn: false,
                                isSquare: false,
                                title:
                                    'I confirm nothing was left behind at customers house and all areas of home were checked *',
                                activeChoice:
                                    entryData?.leftConfirmation == null
                                        ? 0
                                        : entryData!.leftConfirmation!
                                            ? 1
                                            : 2,
                              ),
                              RadioButtons(
                                chooseButton: (value) {
                                  setState(() {
                                    isEmptyIsConfirmedBathroom = false;
                                    context.read<FormBloc>().add(UpdateData(
                                        bathroomConfirmation:
                                            (value == "Yes")));
                                  });
                                },
                                isRequired: isEmptyIsConfirmedBathroom,
                                labels: ['Yes', 'No'],
                                isColumn: false,
                                isSquare: false,
                                activeChoice:
                                    entryData?.bathroomConfirmation == null
                                        ? 0
                                        : entryData!.bathroomConfirmation!
                                            ? 1
                                            : 2,
                                title:
                                    'I confirm that the bathroom fan is in working order and checked before leaving job site *',
                              ),
                              ImageInputField(
                                deleteImage: (index) {
                                  final qualityPic = List<String>.from(
                                      entryData?.qualityPics ?? []);
                                  qualityPic.removeAt(index);
                                  context
                                      .read<FormBloc>()
                                      .add(UpdateData(qualityPics: qualityPic));
                                },
                                isRequired: false,
                                label: 'Misc Quality Pictures',
                                doesItExpand: true,
                                url: entryData?.qualityPics,
                                addImage: (url) {
                                  final qualityPic = List<String>.from(
                                      entryData?.qualityPics ?? []);
                                  qualityPic.add(url);
                                  context
                                      .read<FormBloc>()
                                      .add(UpdateData(qualityPics: qualityPic));
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
                          final formBloc = context.read<FormBloc>();
                          if (validate()) {
                            _showSubmitConfirmationDialog(
                                PatchFinalWalkthroughData(
                                  finalWalkthrough: FinalWalkthrough(
                                    notes: entryData?.notes,
                                    leftConfirmation:
                                        entryData?.leftConfirmation,
                                    bathroomConfirmation:
                                        entryData?.bathroomConfirmation!,
                                    qualityPics: entryData?.qualityPics ?? [],
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
      ),
    );
  }

  Future<void> _showSubmitConfirmationDialog(
      PatchFinalWalkthroughData data, FormBloc formBloc) async {
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
                              HomePage()));
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
