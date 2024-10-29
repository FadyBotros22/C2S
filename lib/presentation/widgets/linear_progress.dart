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
          height: 18,
          child: LinearProgressIndicator(
            borderRadius: BorderRadius.circular(5),
            value: linearProgressValue / 7.0, // Value for progress
            backgroundColor: color == null ? Color(0xffECECEC) : Colors.white,
            valueColor:
                AlwaysStoppedAnimation<Color>(color ?? Color(0xff0066FF)),
          ),
        ),
        // Clip the text to match progress width
        LayoutBuilder(
          builder: (context, constraints) {
            final width = constraints.maxWidth * linearProgressValue / 7;
            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: width,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      color != null
                          ? '${(linearProgressValue / 6.0 * 100).toStringAsFixed(0)}%'
                          : linearProgressValue < 7
                              ? '${linearProgressValue.toInt()} of 6'
                              : '6 of 6', // Display percentage
                      style: kProgressBarTextStyle,
                    ),
                  ),
                ),
                if (color != null)
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      'Inprogress',
                      style: kMcqLabelTextStyle,
                    ),
                  ),
              ],
            );
          },
        ),
      ],
    );
  }
}
