import 'package:c2s/components/empty_list.dart';
import 'package:c2s/components/linear_progress.dart';
import 'package:c2s/components/snakbar.dart';
import 'package:c2s/data/entries_response_data.dart';
import 'package:c2s/screens/form%20screens/form_screen1.dart';
import 'package:c2s/screens/form%20screens/form_screen2.dart';
import 'package:c2s/screens/form%20screens/form_screen3.dart';
import 'package:c2s/screens/form%20screens/form_screen4.dart';
import 'package:c2s/screens/form%20screens/form_screen5.dart';
import 'package:c2s/screens/form%20screens/form_screen6.dart';
import 'package:c2s/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:c2s/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:c2s/statics/preferences.dart';
import '../api_service.dart';
import 'package:intl/intl.dart';

import '../injection_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late EntriesResponseData entriesResponse;
  bool isLoading = true;

  void logout() async {
    try {
      var token = getIt<Preferences>().getData('token').toString();

      await getIt<ApiService>().logout(token);
    } catch (e) {
      if (mounted) {
        Snackbar().showSnackBar(
            context, "Error occurred, try connecting to active Network");
      }
    }
  }

  void getEntries() async {
    try {
      var token = getIt<Preferences>().getData('token').toString();
      entriesResponse = await getIt<ApiService>().getEntries(token);
      setState(() {
        isLoading = false;
      });
    } catch (e) {
      if (mounted) {
        Snackbar().showSnackBar(
            context, "Error occurred, try connecting to active Network");
      }
    }
  }

  @override
  void initState() {
    super.initState();
    getEntries();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 56, left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Entries',
                    style: kAppBarTitleTextStyle,
                  ),
                  PopupMenuButton<String>(
                    icon: const Icon(
                      Icons.more_vert,
                    ),
                    iconSize: 35,
                    onSelected: (String value) {
                      if (value == 'sort') {
                        setState(() {
                          entriesResponse.data.entries.sort((a, b) =>
                              DateTime.parse(a.date.toString()).compareTo(
                                  DateTime.parse(b.date.toString())));
                        });
                      } else if (value == 'logout') {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              alignment: Alignment.center,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 20),
                              actionsPadding: EdgeInsets.all(0),
                              title: const Text(
                                'Logout',
                                textAlign: TextAlign.center,
                                style: kLogoutAlertTitleTextStyle,
                              ), // Main title
                              content: const Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Do you want to logout C2S?',
                                    style: kLogoutAlertSecondaryTitleTextStyle,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ), // Smaller title
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
                                            onPressed: () {
                                              logout();
                                              Navigator.pushAndRemoveUntil(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const LoginPage(),
                                                ),
                                                (route) => false,
                                              );
                                            },
                                            child: Text(
                                              'Yes',
                                              style:
                                                  kMcqLabelTextStyle.copyWith(
                                                      color: Color(0xff007AFF),
                                                      fontSize: 17),
                                            ), // Yes button
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
                                            onPressed: () {
                                              Navigator.of(context)
                                                  .pop(); // Close the dialog
                                            },
                                            child: Text(
                                              'No',
                                              style: kLogoutAlertTitleTextStyle
                                                  .copyWith(
                                                      color: Color(0xff007AFF)),
                                            ), // No button
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            );
                          },
                        );
                      }
                    },
                    itemBuilder: (BuildContext context) {
                      return [
                        PopupMenuItem<String>(
                          value: 'sort',
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/ic_sort.svg',
                                width: 16,
                                height: 16,
                              ),
                              const SizedBox(width: 12),
                              const Text('Sort by date'),
                            ],
                          ),
                        ),
                        PopupMenuItem<String>(
                          value: 'logout',
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/ic_logout.svg',
                                height: 16,
                                width: 16,
                              ),
                              const SizedBox(width: 12),
                              const Text('Logout'),
                            ],
                          ),
                        ),
                      ];
                    },
                  ),
                ],
              ),
            ),
            Expanded(
                child: !isLoading
                    ? entriesResponse.data.entries.isEmpty
                        ? const EmptyList()
                        : ListView.builder(
                            padding: EdgeInsets.only(top: 10),
                            itemCount: entriesResponse.data.entries.length,
                            itemBuilder: (context, index) {
                              final project =
                                  entriesResponse.data.entries[index];
                              return Card(
                                color: const Color(0xFFF5F5F5),
                                margin: const EdgeInsets.only(
                                    left: 16, right: 20, bottom: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 16, left: 16, right: 16),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text("Created by:",
                                                  style: kCreatedByTextStyle),
                                              Text(
                                                DateFormat('d MMMM, yyyy')
                                                    .format(project.date),
                                                style: kDateTextStyle,
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 15.0),
                                          Text(
                                            project.createdBy,
                                            style: kNameTextStyle,
                                          ),
                                          const SizedBox(height: 15.0),
                                          Text(
                                            project.jobId,
                                            style: kProjectNameTextStyle,
                                          ),
                                          const SizedBox(height: 15.0),
                                          Row(
                                            children: [
                                              SvgPicture.asset(
                                                'assets/icons/path929.svg',
                                                height: 16.35,
                                                width: 12,
                                              ),
                                              const SizedBox(width: 9),
                                              Text(
                                                project.address ?? "None",
                                                style: kProjectNameTextStyle,
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 12.5,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 16),
                                      child: const Divider(
                                          color: Color(0xffDFDFDF)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 16),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizedBox(
                                                  width: 270,
                                                  child: LinearProgress(
                                                    linearProgressValue: project
                                                        .progressStep
                                                        .toDouble(),
                                                    color: Color(0xff34C759),
                                                  )),
                                              ElevatedButton(
                                                onPressed: () {
                                                  Widget screen;
                                                  String id = project.id;
                                                  int step = project
                                                      .progressStep
                                                      .toInt();
                                                  if (step == 1) {
                                                    screen =
                                                        FormScreen2(id: id);
                                                  } else if (step == 2) {
                                                    screen =
                                                        FormScreen3(id: id);
                                                  } else if (step == 3) {
                                                    screen =
                                                        FormScreen4(id: id);
                                                  } else if (step == 4) {
                                                    screen =
                                                        FormScreen5(id: id);
                                                  } else {
                                                    screen =
                                                        FormScreen6(id: id);
                                                  }
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          screen,
                                                    ),
                                                  );
                                                },
                                                style: const ButtonStyle(
                                                    overlayColor:
                                                        WidgetStatePropertyAll(
                                                            Colors.transparent),
                                                    elevation:
                                                        WidgetStatePropertyAll(
                                                            0),
                                                    backgroundColor:
                                                        WidgetStatePropertyAll(
                                                            Color(0xffF5F5F5))),
                                                child: SvgPicture.asset(
                                                  'assets/icons/ic_view_form.svg',
                                                  width: 28,
                                                  height: 28,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                          )
                    : const Center(
                        child:
                            CircularProgressIndicator()) // Show loading spinner

                ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 15, bottom: 34),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FormScreen1(),
                ));
          },
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: SvgPicture.asset(
            'assets/icons/button_create_button.svg',
            width: 70,
            height: 70,
          ),
        ),
      ),
    );
  }
}
