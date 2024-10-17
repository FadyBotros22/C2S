import 'package:flutter/material.dart';
import 'mcq_option.dart';
import 'package:c2s/constants.dart';

class RadioButtons extends StatefulWidget {
  const RadioButtons({
    super.key,
    required this.labels,
    required this.isColumn,
    this.isSelfHelp,
    required this.isSquare,
    this.title,
    required this.chooseButton,
    required this.activeChoice,
    required this.isRequired,
  });

  final List<String> labels;
  final Function? isSelfHelp;
  final bool isColumn;
  final bool isSquare;
  final String? title;
  final Function chooseButton;
  final int activeChoice;
  final bool isRequired;

  @override
  State<RadioButtons> createState() => _RadioButtonsState();
}

class _RadioButtonsState extends State<RadioButtons> {
  int? activeChoiceLocal;
  void pressButton(int choiceNum) {
    setState(() {
      activeChoiceLocal = choiceNum;
    });
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      activeChoiceLocal = widget.activeChoice;
    });

    List<Widget> body = List.generate(
      widget.labels.length,
      (index) {
        return McqOption(
          questionLabel: widget.labels[index],
          isActive: (activeChoiceLocal) == (index + 1),
          onPressed: () {
            widget.chooseButton(widget.labels[index]);
            setState(() {
              if (widget.labels[index] == "Self Help") {
                widget.isSelfHelp!(true);
              } else {
                widget.isSelfHelp?.call(false);
              }
              pressButton(index + 1);
            });
          },
          isSquare: widget.isSquare,
        );
      },
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.isRequired)
          const Text(
            'This field is Required',
            style: TextStyle(color: Colors.red),
          ),
        if (widget.title != null && widget.title!.contains('*'))
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: widget.title!.replaceAll('*', ''),
                  style: kAppBarSecondaryTitleTextStyle,
                ),
                const TextSpan(
                  text: '*',
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
          ),
        if (widget.title != null && !widget.title!.contains('*'))
          Text(
            widget.title!,
            style: kAppBarSecondaryTitleTextStyle,
          ),
        Container(
          child: widget.isColumn ? Column(children: body) : Row(children: body),
        ),
      ],
    );
  }
}
