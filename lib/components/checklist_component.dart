import 'package:c2s/components/radio_buttons.dart';
import 'package:c2s/constants.dart';
import 'package:flutter/material.dart';

class ChecklistComponent extends StatefulWidget {
  const ChecklistComponent(
      {super.key,
      required this.title,
      required this.activeChoice,
      required this.chooseButtons});
  final String title;
  final int activeChoice;
  final Function chooseButtons;

  @override
  State<ChecklistComponent> createState() => _ChecklistComponentState();
}

class _ChecklistComponentState extends State<ChecklistComponent> {
  bool? object;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFAFAFA),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
            child: Text(
              widget.title,
              style: kParagraphTextStyle.copyWith(color: Colors.black),
            ),
          ),
          RadioButtons(
              isChecklistComponent: true,
              isRequired: false,
              chooseButton: (value) {
                widget.chooseButtons(value);
              },
              labels: const ['Yes', 'No'],
              isColumn: false,
              isSquare: true,
              activeChoice: widget.activeChoice),
          const Divider(
            indent: 0,
            color: Color(0xffDCDCDC),
            height: 0,
          ),
        ],
      ),
    );
  }
}
