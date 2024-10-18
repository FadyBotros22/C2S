import 'package:c2s/components/action_button.dart';
import 'package:c2s/components/input_field.dart';
import 'package:c2s/components/radio_buttons.dart';
import 'package:c2s/components/title_component.dart';
import 'package:c2s/components/transparent_action_button.dart';
import 'package:c2s/data/get_entry_response_data.dart';
import 'package:c2s/data/patch%20data/patch_base_data.dart';
import 'package:c2s/data/post_entries_request_data.dart' as request;
import 'package:c2s/data/post_entries_response_data.dart';
import 'package:c2s/screens/form%20screens/form_screen2.dart';
import 'package:c2s/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:c2s/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:c2s/statics/preferences.dart';
import 'package:c2s/statics/dio.dart';
import 'package:c2s/api_service.dart';
import 'package:intl/intl.dart';

class FormScreen1 extends StatefulWidget {
  const FormScreen1({super.key, this.id});
  final String? id;

  @override
  State<FormScreen1> createState() => _FormScreen1State();
}

class _FormScreen1State extends State<FormScreen1> {
  bool iSelfHelp = false;
  late GetEntryResponseData getEntryResponseData;

  DateTime? selectedDateTime;
  String? programType;
  bool? doeJob;
  String? date;
  String? address;
  String? city;
  String? jobId;
  String? crew;

  bool isEmptyCrew = false;
  bool isEmptyDate = false;
  bool isEmptyAdd = false;
  bool isEmptyCity = false;
  bool isEmptyJobId = false;
  bool isEmptyDoe = false;
  bool isEmptyProg = false;

  bool validate() {
    if (programType == null) {
      setState(() {
        isEmptyProg = true;
      });
      return false;
    } else if (crew == null) {
      setState(() {
        isEmptyCrew = true;
      });
      return false;
    } else if (date == null) {
      setState(() {
        isEmptyDate = true;
      });
      return false;
    } else if (address == null) {
      setState(() {
        isEmptyAdd = true;
      });
      return false;
    } else if (city == null) {
      setState(() {
        isEmptyCity = true;
      });
      return false;
    } else if (jobId == null && widget.id == null) {
      setState(() {
        isEmptyJobId = true;
      });
      return false;
    } else if (doeJob == null && programType == 'self_help') {
      setState(() {
        isEmptyDoe = true;
      });
      return false;
    }
    return true;
  }

  Future<String> postEntry() async {
    ApiService apiService = ApiService(DioClass.getDio());
    var token =
        (await Preferences.getPreferences()).getString('token').toString();

    request.PostEntriesRequestData postEntriesRequestData =
        request.PostEntriesRequestData(
            programType: programType!,
            doeJob: doeJob ?? false,
            date: date!,
            address: address!,
            city: city!,
            coordinates: request.Coordinates(latitude: 0, longitude: 0),
            jobId: jobId!);

    PostEntriesResponseData postEntriesResponseData =
        await apiService.postEntry(token, postEntriesRequestData);
    return postEntriesResponseData.data.id;
  }

  void patchEntry() async {
    ApiService apiService = ApiService(DioClass.getDio());
    var token =
        (await Preferences.getPreferences()).getString('token').toString();
    PatchBaseData patchBaseData = PatchBaseData(
        baseData: BaseData(
            programType: programType!,
            doeJob: doeJob ?? false,
            address: address!,
            city: city!,
            date: date!));

    await apiService.patchBase(widget.id!, token, patchBaseData);
  }

  void getEntry() async {
    ApiService apiService = ApiService(DioClass.getDio());
    var token =
        (await Preferences.getPreferences()).getString('token').toString();

    GetEntryResponseData getEntryResponseData =
        await apiService.getEntry(token, widget.id!);

    setState(() {
      programType = getEntryResponseData.data?.programType;
      doeJob = getEntryResponseData.data?.doeJob;
      crew = "Fady";
      date = getEntryResponseData.data?.date;
      address = getEntryResponseData.data?.address;
      city = getEntryResponseData.data?.city;
      jobId = getEntryResponseData.data?.jobId;
      if (programType == 'self_help') {
        iSelfHelp = true;
      }
    });
  }

  void selfHelp(bool isSelfHelp) {
    setState(() {
      iSelfHelp = isSelfHelp;
    });
  }

  Future<void> _selectDateAndTime() async {
    // Show date picker
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDateTime ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null) {
      // Show time picker
      final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(selectedDateTime ?? DateTime.now()),
      );

      if (pickedTime != null) {
        // Combine the date and time into a DateTime object
        setState(() {
          selectedDateTime = DateTime(
            pickedDate.year,
            pickedDate.month,
            pickedDate.day,
            pickedTime.hour,
            pickedTime.minute,
          );
          date = DateFormat('yyyy-MM-dd').format(selectedDateTime!);
          isEmptyDate = false;
        });
      }
    }
  }

  int getActiveChoiceForProgramType() {
    if (programType == null) {
      return 0;
    } else if (programType == 'clearesult') {
      return 1;
    } else if (programType == 'rise') {
      return 2;
    } else if (programType == 'self_help') {
      return 3;
    } else {
      return 4;
    }
  }

  @override
  void initState() {
    super.initState();
    if (widget.id != null) {
      getEntry();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(16),
              child: TitleComponent(
                  screen: HomePage(),
                  title: 'Create new form',
                  linearProgressValue: 1.0),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RadioButtons(
                            isRequired: isEmptyProg,
                            chooseButton: (value) {
                              setState(
                                () {
                                  if (value == 'CLEAResult') {
                                    programType = 'clearesult';
                                  } else if (value == 'RISE') {
                                    programType = 'rise';
                                  } else if (value == 'Self Help') {
                                    programType = 'self_help';
                                  } else {
                                    programType = 'cfc';
                                  }
                                  if (programType != null) {
                                    isEmptyProg = false;
                                  }
                                },
                              );
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
                            isSelfHelp: selfHelp,
                            isSquare: false,
                            activeChoice: getActiveChoiceForProgramType(),
                          ),
                        ],
                      ),
                    ),
                    const Divider(indent: 0),
                    Container(
                      margin: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (iSelfHelp)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RadioButtons(
                                  isRequired: isEmptyDoe,
                                  chooseButton: (value) {
                                    setState(() {
                                      if (value == "Yes") {
                                        doeJob = true;
                                      } else if (value == 'No') {
                                        doeJob = false;
                                      }
                                      if (doeJob != null) {
                                        isEmptyDoe = false;
                                      }
                                    });
                                  },
                                  title: 'DOE Job? *',
                                  labels: const ['Yes', 'No'],
                                  isColumn: false,
                                  isSquare: false,
                                  activeChoice: (doeJob == null)
                                      ? 0
                                      : doeJob!
                                          ? 1
                                          : 2,
                                ),
                              ],
                            ),
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                        text: 'Date and time ',
                                        style: kAppBarSecondaryTitleTextStyle),
                                    TextSpan(
                                        text: '*',
                                        style: TextStyle(color: Colors.red)),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              TextField(
                                readOnly: true,
                                onTap: () {
                                  _selectDateAndTime();
                                },
                                decoration: InputDecoration(
                                  hintText: date ?? '',
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                      color: isEmptyDate
                                          ? Colors.red
                                          : const Color(
                                              0xffB3B3B3), // Color when not focused
                                      width: 1.0,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ), // Full border on all sides
                                ),
                              ),
                              if (isEmptyDate)
                                const Text(
                                  'This field is required',
                                  style: TextStyle(color: Colors.red),
                                ),
                              const SizedBox(height: 40),
                            ],
                          ),
                          InputField(
                            title: 'Address line 1 *',
                            color: isEmptyAdd ? Colors.red : null,
                            hintText: address ?? '',
                            onChanged: (value) {
                              setState(() {
                                address = value;
                                isEmptyAdd = false;
                              });
                            },
                          ),
                          InputField(
                            title: 'City *',
                            color: isEmptyCity ? Colors.red : null,
                            hintText: city ?? '',
                            onChanged: (value) {
                              setState(() {
                                city = value;
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
                                  jobId = value;
                                  isEmptyJobId = false;
                                });
                              },
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ActionButton(
                    label: 'Save and next',
                    onPressed: () async {
                      if (widget.id == null) {
                        if (validate()) {
                          String id = await postEntry();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FormScreen2(id: id),
                            ),
                          );
                        }
                      } else {
                        if (validate()) {
                          patchEntry();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FormScreen2(id: widget.id!),
                            ),
                          );
                        }
                      }
                    },
                  ),
                  TransparentActionButton(
                    onPressed: () async {
                      if (widget.id == null) {
                        if (validate()) {
                          postEntry();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                        }
                      } else {
                        if (validate()) {
                          patchEntry();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                          );
                        }
                      }
                    },
                    label: 'Save for now',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
