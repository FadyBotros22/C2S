import 'package:flutter/material.dart';
import 'package:c2s/constants.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, required this.onPressed, required this.label});
  final Function onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: SizedBox(
          height: 50,
          child: TextButton(
            style: ButtonStyle(
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              backgroundColor: const WidgetStatePropertyAll(Colors.black),
            ),
            onPressed: () {
              onPressed();
            },
            child: Text(
              label,
              style: kTextButtonTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
