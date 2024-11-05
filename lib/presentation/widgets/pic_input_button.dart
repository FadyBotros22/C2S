import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';

class PicInputButton extends StatelessWidget {
  final Function onPickImage;

  const PicInputButton({
    super.key,
    required this.onPickImage,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: const ButtonStyle(
        padding: WidgetStatePropertyAll(
          EdgeInsets.only(left: 0, top: 10),
        ),
        overlayColor: WidgetStateColor.transparent,
      ),
      onPressed: () {
        onPickImage();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset('assets/icons/Group_53.svg', height: 66, width: 66),
          const SizedBox(width: 10),
          const Text(
            'Choose File',
            style: kParagraphTextStyle,
          ),
        ],
      ),
    );
  }
}
