import 'package:flutter/material.dart';
import 'package:c2s/constants.dart';

class InputField extends StatefulWidget {
  const InputField({
    super.key,
    required this.title,
    this.maxLines,
    required this.onChanged,
    this.color,
    this.hintText,
    this.isNumber,
  });
  final String title;
  final int? maxLines;
  final Color? color;
  final ValueChanged<String> onChanged;
  final String? hintText;
  final bool? isNumber;
  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    bool isRequired = widget.title.contains('*');

    return Container(
      margin: EdgeInsets.only(right: 16, left: 16, top: 0, bottom: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (isRequired)
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: widget.title.replaceAll('*', ''),
                    style: kQuestionTitleTextStyle,
                  ),
                  const TextSpan(
                    text: '*',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
          if (!isRequired)
            Text(
              widget.title,
              style: kQuestionTitleTextStyle,
            ),
          const SizedBox(height: 10),
          TextField(
            keyboardType: widget.isNumber != null
                ? TextInputType.number
                : TextInputType.text,
            onChanged: widget.onChanged,
            textAlignVertical: TextAlignVertical.top,
            textAlign: TextAlign.start,
            maxLines: widget.maxLines ?? 1,
            decoration: InputDecoration(
              hintText: widget.hintText ?? '',
              contentPadding: const EdgeInsets.symmetric(
                  vertical: 14.0, horizontal: 12), // Adjust the padding
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: widget.color ??
                      const Color(0xffB3B3B3), // Color when not focused
                  width: 1.0,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
              ), // Full border on all sides
            ),
          ),
          if (widget.color != null)
            const Text(
              'This field is required',
              style: TextStyle(color: Colors.red),
            ),
        ],
      ),
    );
  }
}
