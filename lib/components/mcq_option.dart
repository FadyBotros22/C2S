import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:c2s/constants.dart';

class McqOption extends StatefulWidget {
  const McqOption(
      {super.key,
      required this.questionLabel,
      required this.isActive,
      required this.onPressed,
      required this.isSquare});

  final String questionLabel;
  final bool isActive;
  final Function onPressed;
  final bool isSquare;

  @override
  State<McqOption> createState() => _McqOptionState();
}

class _McqOptionState extends State<McqOption> {
  String unSelectedButton = 'assets/icons/Radio_button_disactive.svg';
  String selectedButton = 'assets/icons/Radio_button_enable.svg';
  String unSelectedSquareButton = 'assets/icons/Checkmark_disable.svg';
  String selectedSquareButton = 'assets/icons/Checkmark_enable.svg';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          child: TextButton(
            onPressed: () {
              widget.onPressed();
            },
            style: TextButton.styleFrom(
              alignment: AlignmentDirectional.centerStart,
              overlayColor: Colors.transparent,
              padding: const EdgeInsets.all(0),
            ),
            child: Row(
              children: [
                SvgPicture.asset(widget.isSquare
                    ? widget.isActive
                        ? selectedSquareButton
                        : unSelectedSquareButton
                    : widget.isActive
                        ? selectedButton
                        : unSelectedButton),
                const SizedBox(width: 20),
                Text(
                  widget.questionLabel,
                  style: kMcqLabelTextStyle,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 40),
      ],
    );
  }
}
