import 'package:flutter/material.dart';
import 'package:c2s/constants.dart';
import 'package:intl/intl.dart';

class DateInput extends StatefulWidget {
  const DateInput({
    super.key,
    required this.onChanged,
    this.color,
    this.hintText,
  });

  final Color? color;
  final ValueChanged<String> onChanged;
  final String? hintText;

  @override
  State<DateInput> createState() => _DateInputState();
}

class _DateInputState extends State<DateInput> {
  DateTime? selectedDateTime;
  String? date;
  final TextEditingController _controller = TextEditingController();

  Future<String> _selectDateAndTime() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDateTime ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null && mounted) {
      // Show time picker
      final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(selectedDateTime ?? DateTime.now()),
      );

      if (pickedTime != null) {
        // Combine the date and time into a DateTime object
        setState(() {
          selectedDateTime = DateTime(
            pickedDate.year,
            pickedDate.month,
            pickedDate.day,
            pickedTime.hour,
            pickedTime.minute,
          );
        });
        setState(() {
          date = DateFormat('yyyy-MM-dd').format(selectedDateTime!);
          _controller.text = date!;
        });
        String dateSend = DateFormat('yyyy-MM-dd').format(selectedDateTime!);
        return dateSend;
      }
    }
    return '';
  }

  @override
  void initState() {
    super.initState();
    _controller.text = date ?? widget.hintText ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16, left: 16, top: 0, bottom: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Date and time ',
                  style: kQuestionTitleTextStyle,
                ),
                TextSpan(text: '*', style: TextStyle(color: Colors.red)),
              ],
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: _controller,
            // initialValue: widget.hintText,
            readOnly: true,
            onTap: () async {
              widget.onChanged(await _selectDateAndTime());
            },
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: widget.color ?? const Color(0xffB3B3B3),
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
