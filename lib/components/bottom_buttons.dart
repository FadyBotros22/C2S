import 'package:c2s/components/snakbar.dart';
import 'package:c2s/screens/form%20screens/form_screen2.dart';
import 'package:flutter/material.dart';
import 'action_button.dart';
import 'transparent_action_button.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({
    super.key,
    this.id,
    required this.validate,
    required this.previousScreen,
    required this.patchEntry,
    required this.nextScreen,
  });
  final String? id;
  final Function validate;
  final Function patchEntry;
  final Widget nextScreen;
  final Widget previousScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ActionButton(
            label: 'Save and next',
            onPressed: () async {
              if (id == null) {
                if (validate()) {
                  String id = await patchEntry();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FormScreen2(id: id),
                    ),
                  );
                }
              } else {
                if (validate()) {
                  bool isComplete = await patchEntry();
                  isComplete
                      ? Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => nextScreen,
                          ),
                        )
                      : Snackbar().showSnackBar(context,
                          "Error occurred, try connecting to active Network");
                }
              }
            },
          ),
          TransparentActionButton(
            onPressed: () async {
              if (validate()) {
                bool isComplete = await patchEntry();
                isComplete
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => previousScreen,
                        ),
                      )
                    : Snackbar().showSnackBar(context,
                        "Error occurred, try connecting to active Network");
              }
            },
            label: 'Save for now',
          ),
        ],
      ),
    );
  }
}
