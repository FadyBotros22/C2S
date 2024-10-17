import 'package:c2s/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:c2s/constants.dart';
import 'package:c2s/components/action_button.dart';

class CompleteForm extends StatelessWidget {
  const CompleteForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/icons/ic_submit.svg',
            width: 130,
            height: 130,
          ),
          const SizedBox(height: 30),
          const Text(
            'Thank You!',
            style: kAppBarTitleTextStyle,
          ),
          const SizedBox(height: 15),
          const Text(
            'You have completed this form',
            style: kAppBarSecondaryTitleTextStyle,
          ),
          const SizedBox(height: 30),
          ActionButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
                (route) => false,
              );
            },
            label: 'Continue to home',
          )
        ],
      ),
    );
  }
}
