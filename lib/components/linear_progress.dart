import 'package:c2s/constants.dart';
import 'package:flutter/material.dart';

class LinearProgress extends StatelessWidget {
  const LinearProgress(
      {super.key, required this.linearProgressValue, this.color});
  final double linearProgressValue;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        // Linear progress indicator
        SizedBox(
          height: 30,
          child: LinearProgressIndicator(
            borderRadius: BorderRadius.circular(10),
            value: linearProgressValue / 6.0, // Value for progress
            backgroundColor: const Color(0xffECECEC),
            valueColor:
                AlwaysStoppedAnimation<Color>(color ?? Color(0xff0066FF)),
          ),
        ),
        // Clip the text to match progress width
        LayoutBuilder(
          builder: (context, constraints) {
            final width = constraints.maxWidth *
                linearProgressValue /
                6; // Get the maximum width available

            return SizedBox(
              width: width,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  color != null
                      ? '${(linearProgressValue / 6.0 * 100).toStringAsFixed(0)}%'
                      : '${linearProgressValue.toInt()} of 6', // Display percentage
                  style: kProgressBarTextStyle,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
