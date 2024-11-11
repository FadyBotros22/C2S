import 'package:c2s/domain/blocs/home_bloc/home_bloc.dart';
import 'package:c2s/domain/blocs/home_bloc/home_event.dart';
import 'package:flutter/material.dart';
import 'package:c2s/data/local/constants.dart';
import 'package:flutter_svg/svg.dart';

class PopupMenu extends StatefulWidget {
  const PopupMenu({super.key, required this.homeBloc});
  final HomeBloc homeBloc;

  @override
  State<PopupMenu> createState() => _PopupMenuState();
}

class _PopupMenuState extends State<PopupMenu> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: const Icon(
        Icons.more_vert,
      ),
      iconSize: 35,
      onSelected: (String value) {
        if (value == 'sort') {
          setState(() {
            widget.homeBloc.add(SortClicked());
          });
        } else if (value == 'logout') {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                alignment: Alignment.center,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 0, vertical: 12),
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
                                widget.homeBloc.add(LogoutClicked());
                              },
                              child: Text(
                                'Yes',
                                style: kMcqLabelTextStyle.copyWith(
                                    color: Color(0xff007AFF), fontSize: 17),
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
                                Navigator.of(context).pop(); // Close the dialog
                              },
                              child: Text(
                                'No',
                                style: kLogoutAlertTitleTextStyle.copyWith(
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
    );
  }
}
