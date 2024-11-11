import 'package:flutter/material.dart';
import 'mcq_option.dart';
import 'package:c2s/data/local/constants.dart';

class RadioButtons extends StatefulWidget {
  const RadioButtons({
    super.key,
    required this.labels,
    required this.isColumn,
    required this.isSquare,
    this.title,
    required this.chooseButton,
    required this.activeChoice,
    required this.isRequired,
    this.isChecklistComponent,
    required this.isEmpty,
  });

  final List<String> labels;
  final bool isColumn;
  final bool isSquare;
  final String? title;
  final Function chooseButton;
  final int activeChoice;
  final bool isRequired;
  final bool? isChecklistComponent;
  final bool isEmpty;

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
              pressButton(index + 1);
            });
          },
          isSquare: widget.isSquare,
        );
      },
    );

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.title != null && widget.isRequired)
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: widget.title!.replaceAll('*', ''),
                    style: kQuestionTitleTextStyle,
                  ),
                  const TextSpan(
                    text: '*',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
          if (widget.title != null && !widget.isRequired)
            Text(
              widget.title!,
              style:
                  widget.isColumn ? kTitleTextStyle : kQuestionTitleTextStyle,
            ),
          SizedBox(height: 10),
          Container(
            child:
                widget.isColumn ? Column(children: body) : Row(children: body),
          ),
          if (widget.isEmpty)
            const Text(
              'This field is Required',
              style: TextStyle(color: Colors.red),
            ),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
