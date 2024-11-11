import 'package:flutter/material.dart';
import 'package:c2s/data/local/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'linear_progress.dart';

class TitleComponent extends StatelessWidget {
  const TitleComponent({
    super.key,
    required this.title,
    required this.linearProgressValue,
    required this.screen,
  });
  final String title;
  final double linearProgressValue;
  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 20,
                child: TextButton(
                  style: TextButton.styleFrom(
                      alignment: AlignmentDirectional.centerStart,
                      padding: const EdgeInsets.all(0),
                      fixedSize: const Size(10, 10)),
                  onPressed: () => Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => screen,
                    ),
                    (route) => false,
                  ),
                  child: SvgPicture.asset('assets/icons/ic_back.svg'),
                ),
              ),
              const SizedBox(width: 5),
              Text(
                title,
                style: kTitleTextStyle,
              ),
            ],
          ),
          // const SizedBox(height: 10),
          LinearProgress(linearProgressValue: linearProgressValue),
        ],
      ),
    );
  }
}
