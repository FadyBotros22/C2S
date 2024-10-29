import '../../../data/json_data/post_entries_request_data.dart' as req;
import '../../../data/json_data/patch data/patch_base_data.dart';
import '../../../domain/blocs/form_bloc/form_bloc.dart';
import '../../../domain/blocs/form_bloc/form_event.dart';
import '../../../injection_container.dart';
import '../../../domain/blocs/form_bloc/form_state.dart' as form_state;
import '../../../data/json_data/get_entry_response_data.dart';
import '../../../domain/repositories/abstract_entries_repo.dart';
import '../../../statics/preferences.dart';
import '../../widgets/bottom_buttons.dart';
import '../../widgets/date_input.dart';
import '../../widgets/input_field.dart';
import '../../widgets/radio_buttons.dart';
import '../../widgets/title_component.dart';
import '../home_page.dart';
import 'form_screen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormScreen1 extends StatefulWidget {
  const FormScreen1({super.key, this.id});
  final String? id;

  @override
  State<FormScreen1> createState() => _FormScreen1State();
}

class _FormScreen1State extends State<FormScreen1> {
  String? crew;

  bool isEmptyCrew = false;
  bool isEmptyDate = false;
  bool isEmptyAdd = false;
  bool isEmptyCity = false;
  bool isEmptyJobId = false;
  bool isEmptyDoe = false;
  bool isEmptyProg = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FormBloc(getIt<AbstractEntriesRepo>())
        ..add(
          LoadEntryEvent(
            getIt<Preferences>().getData('token').toString(),
            widget.id ?? 'empty',
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
              MaterialPageRoute(
                  builder: (context) => state.screen == 'next'
                      ? FormScreen2(
                          id: widget.id ?? state.id.toString(),
                        )
                      : HomePage()),
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
            return body(context, state.entryData);
          }

          return Scaffold(backgroundColor: Colors.white);
        },
      ),
    );
  }

  Widget body(BuildContext context, GetEntryResponseData? entryData) {
    bool validate() {
      if (entryData?.data?.programType == null) {
        setState(() {
          isEmptyProg = true;
        });
        return false;
      } else if (crew == null) {
        setState(() {
          isEmptyCrew = true;
        });
        return false;
      } else if (entryData?.data?.date == null) {
        setState(() {
          isEmptyDate = true;
        });
        return false;
      } else if (entryData?.data?.address == null) {
        setState(() {
          isEmptyAdd = true;
        });
        return false;
      } else if (entryData?.data?.city == null) {
        setState(() {
          isEmptyCity = true;
        });
        return false;
      } else if (entryData?.data?.jobId == null && widget.id == null) {
        setState(() {
          isEmptyJobId = true;
        });
        return false;
      } else if (entryData?.data?.doeJob == null &&
          entryData?.data?.programType == 'self_help') {
        setState(() {
          isEmptyDoe = true;
        });
        return false;
      }
      return true;
    }

    int getActiveChoiceForProgramType() {
      if (entryData?.data?.programType == null) {
        return 0;
      } else if (entryData?.data?.programType == 'clearesult') {
        return 1;
      } else if (entryData?.data?.programType == 'rise') {
        return 2;
      } else if (entryData?.data?.programType == 'self_help') {
        return 3;
      } else {
        return 4;
      }
    }

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, _) {
        if (!didPop) {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
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
                  screen: HomePage(),
                  title: 'Create new form',
                  linearProgressValue: 1.0),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RadioButtons(
                        isRequired: isEmptyProg,
                        chooseButton: (value) {
                          setState(() {
                            if (value == 'CLEAResult') {
                              entryData?.data?.programType = 'clearesult';
                            } else if (value == 'RISE') {
                              entryData?.data?.programType = 'rise';
                            } else if (value == 'Self Help') {
                              entryData?.data?.programType = 'self_help';
                            } else {
                              entryData?.data?.programType = 'cfc';
                            }
                            if (entryData?.data?.programType != null) {
                              isEmptyProg = false;
                            }
                          });
                        },
                        title:
                            'What Program are you filling out a job checklist for?',
                        labels: const [
                          "CLEAResult",
                          "RISE",
                          "Self Help",
                          "Citizens for Citizens (CFC)"
                        ],
                        isColumn: true,
                        isSquare: false,
                        activeChoice: getActiveChoiceForProgramType(),
                      ),
                      const Divider(
                        color: Color(0xffDCDCDC),
                      ),
                      SizedBox(height: 8),
                      if (entryData?.data?.programType == 'self_help') ...[
                        RadioButtons(
                          isRequired: isEmptyDoe,
                          chooseButton: (value) {
                            setState(() {
                              if (value == "Yes") {
                                entryData?.data?.doeJob = true;
                              } else if (value == 'No') {
                                entryData?.data?.doeJob = false;
                              }
                              if (entryData?.data?.doeJob != null) {
                                isEmptyDoe = false;
                              }
                            });
                          },
                          title: 'DOE Job? *',
                          labels: const ['Yes', 'No'],
                          isColumn: false,
                          isSquare: false,
                          activeChoice: (entryData == null ||
                                  entryData.data == null ||
                                  entryData.data?.doeJob == null)
                              ? 0
                              : entryData.data!.doeJob!
                                  ? 1
                                  : 2,
                        ),
                        SizedBox(height: 8),
                      ],
                      SizedBox(height: 8),
                      InputField(
                        color: isEmptyCrew ? Colors.red : null,
                        title: 'Crew Chief Submitting Form *',
                        hintText: crew,
                        onChanged: (value) {
                          setState(() {
                            crew = value;
                            isEmptyCrew = false;
                          });
                        },
                      ),
                      DateInput(
                        onChanged: (value) {
                          setState(() {
                            entryData?.data?.date = value;
                            isEmptyDate = false;
                          });
                        },
                        color: isEmptyDate ? Colors.red : null,
                        hintText: entryData?.data?.date,
                      ),
                      InputField(
                        title: 'Address line 1 *',
                        color: isEmptyAdd ? Colors.red : null,
                        hintText: entryData?.data?.address ?? '',
                        onChanged: (value) {
                          setState(() {
                            entryData?.data?.address = value;
                            isEmptyAdd = false;
                          });
                        },
                      ),
                      InputField(
                        title: 'City *',
                        color: isEmptyCity ? Colors.red : null,
                        hintText: entryData?.data?.city ?? '',
                        onChanged: (value) {
                          setState(() {
                            entryData?.data?.city = value;
                            isEmptyCity = false;
                          });
                        },
                      ),
                      if (widget.id == null)
                        InputField(
                          title: 'Job ID *',
                          color: isEmptyJobId ? Colors.red : null,
                          onChanged: (value) {
                            setState(() {
                              entryData?.data?.jobId = value;
                              isEmptyJobId = false;
                            });
                          },
                        ),
                    ],
                  ),
                ),
              ),
              BottomButtons(
                validate: validate,
                id: widget.id,
                patchData: PatchBaseData(
                  baseData: BaseData(
                    programType: entryData?.data?.programType,
                    doeJob: entryData?.data?.doeJob,
                    address: entryData?.data?.address,
                    city: entryData?.data?.city,
                    date: entryData?.data?.date,
                  ),
                ).toJson(),
                postEntriesRequestData: req.PostEntriesRequestData(
                    programType: entryData?.data?.programType,
                    doeJob: entryData?.data?.doeJob,
                    date: entryData?.data?.date,
                    address: entryData?.data?.address,
                    city: entryData?.data?.city,
                    coordinates: req.Coordinates(latitude: 0, longitude: 0),
                    jobId: entryData?.data?.jobId),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
