import 'package:c2s/data/models/coordinates/coordinates.dart';

import 'package:c2s/data/models/post_entries_models/post_entries_request_data/post_entries_request_data.dart'
    as req;
import '../../../constants.dart';
import '../../../data/models/patch_models/patch_base/patch_base.dart';
import '../../../domain/blocs/form_bloc/form_bloc.dart';
import '../../../domain/blocs/form_bloc/form_event.dart';
import '../../../injection_container.dart';
import '../../../domain/blocs/form_bloc/form_state.dart' as form_state;
import '../../../domain/repositories/abstract_entries_repo.dart';
import '../../../statics/preferences.dart';
import '../../widgets/bottom_buttons.dart';
import '../../widgets/date_input.dart';
import '../../widgets/input_field.dart';
import '../../widgets/radio_buttons.dart';
import '../../widgets/snakbar.dart';
import '../../widgets/title_component.dart';
import '../home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum ProgramType {
  clearesult,
  rise,
  self_help,
  cfc,
}

Map<String, ProgramType> programTypeMap = {
  'CLEAResult': ProgramType.clearesult,
  'RISE': ProgramType.rise,
  'Self Help': ProgramType.self_help,
  'Citizens for Citizens (CFC)': ProgramType.cfc,
};

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
            getIt<Preferences>().getData(kToken).toString(),
            widget.id ?? 'empty',
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
                MaterialPageRoute(builder: (context) => state.screen),
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
    final entryData = state.entryData;

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
          entryData?.data?.programType == ProgramType.self_help) {
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
      } else if (entryData?.data?.programType == ProgramType.clearesult) {
        return 1;
      } else if (entryData?.data?.programType == ProgramType.rise) {
        return 2;
      } else if (entryData?.data?.programType == ProgramType.self_help) {
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
        body: RefreshIndicator(
          onRefresh: () async {
            context.read<FormBloc>().add(LoadEntryEvent(
                getIt<Preferences>().getData(kToken).toString(), 'empty'));
          },
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TitleComponent(
                  title: 'Create new form',
                  linearProgressValue: 1.0,
                  screen: HomePage(),
                ),
                state.isLoading == true
                    ? Center(child: CircularProgressIndicator())
                    : Expanded(
                        child: SingleChildScrollView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RadioButtons(
                                isEmpty: isEmptyProg,
                                isRequired: false,
                                chooseButton: (value) {
                                  context.read<FormBloc>().add(UpdateData(
                                      programType: programTypeMap[value]));
                                  if (entryData?.data?.programType != null) {
                                    setState(() {
                                      isEmptyProg = false;
                                    });
                                  }
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
                              if (entryData?.data?.programType ==
                                  ProgramType.self_help) ...[
                                RadioButtons(
                                  isRequired: true,
                                  isEmpty: isEmptyDoe,
                                  chooseButton: (value) {
                                    context.read<FormBloc>().add(
                                        UpdateData(doeJob: (value == 'Yes')));
                                    if (entryData?.data?.doeJob != null) {
                                      setState(() {
                                        isEmptyDoe = false;
                                      });
                                    }
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
                                    context
                                        .read<FormBloc>()
                                        .add(UpdateData(date: value));
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
                                    context
                                        .read<FormBloc>()
                                        .add(UpdateData(address: value));
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
                                    context
                                        .read<FormBloc>()
                                        .add(UpdateData(city: value));
                                    isEmptyCity = false;
                                  });
                                },
                              ),
                              if (widget.id == null)
                                InputField(
                                  title: 'Job ID *',
                                  color: isEmptyJobId ? Colors.red : null,
                                  onChanged: (value) {
                                    setState(
                                      () {
                                        context
                                            .read<FormBloc>()
                                            .add(UpdateData(jobId: value));
                                        isEmptyJobId = false;
                                      },
                                    );
                                  },
                                ),
                            ],
                          ),
                        ),
                      ),
                BottomButtons(
                  nextScreen: Text(''),
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
                  ),
                  postEntriesRequestData: req.PostEntriesRequestData(
                    programType: entryData?.data?.programType,
                    doeJob: entryData?.data?.doeJob,
                    date: entryData?.data?.date,
                    address: entryData?.data?.address,
                    city: entryData?.data?.city,
                    coordinates: Coordinates(latitude: 0, longitude: 0),
                    jobId: entryData?.data?.jobId,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
