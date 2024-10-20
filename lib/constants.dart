import 'package:flutter/material.dart';

const kAppBarTitleTextStyle = TextStyle(
  fontFamily: 'SF Pro Display',
  fontWeight: FontWeight.w700,
  fontSize: 25,
  height: 25 / 20,
  color: Colors.black,
);

const kAppBarSecondaryTitleTextStyle = TextStyle(
  fontFamily: 'SF Pro Display',
  fontWeight: FontWeight.w600,
  fontSize: 16,
  height: 21 / 16,
  color: Color(0xFF606060),
);

const kQuestionTitleTextStyle = TextStyle(
  fontFamily: 'SF Pro Display',
  fontWeight: FontWeight.w600,
  fontSize: 16,
  height: 21 / 16,
  color: Colors.black,
);

const kTextButtonTextStyle = TextStyle(
  fontFamily: 'SF Pro Display',
  fontWeight: FontWeight.w600,
  fontSize: 16,
  height: 21 / 16,
  color: Colors.white,
);

const kErrorMessageTextStyle = TextStyle(
  fontFamily: 'SF Pro Display',
  fontWeight: FontWeight.w400,
  fontSize: 14,
  height: 21 / 14,
  color: Color(0xffFF3B30),
);

const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: "Username",
  hintStyle: TextStyle(color: Color(0xffA8A8A8)),
  border: UnderlineInputBorder(),
  contentPadding: EdgeInsets.only(
      bottom: 10), // Adjust the padding to align with the bottom border

  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Color(0xffA8A8A8), width: 1.0),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(
      color: Colors.grey, // Border color when focused
      width: 2.0,
    ),
  ),
);

const kCreatedByTextStyle = TextStyle(
  fontFamily: 'SF Pro Display',
  fontWeight: FontWeight.w400,
  fontSize: 11,
  height: 11 / 25,
  color: Color(0xffB3B3B3),
);

const kDateTextStyle = TextStyle(
  fontFamily: 'SF Pro Display',
  fontWeight: FontWeight.w400,
  fontSize: 12,
  height: 11 / 12,
  color: Color(0xff717171),
);

const kNameTextStyle = TextStyle(
  fontFamily: 'SF Pro Display',
  fontWeight: FontWeight.w600,
  fontSize: 16,
  height: 16 / 25,
  color: Color(0xff000000),
);

const kProjectNameTextStyle = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w400,
  fontSize: 12,
  height: 12 / 14,
  color: Color(0xff717171),
);

const kLogoutAlertTitleTextStyle = TextStyle(
  fontFamily: 'SF Pro Display',
  fontWeight: FontWeight.w600,
  fontSize: 17,
  height: 22 / 17,
  color: Colors.black,
);

const kLogoutAlertSecondaryTitleTextStyle = TextStyle(
  fontFamily: 'SF Pro Display',
  fontWeight: FontWeight.w400,
  fontSize: 13,
  height: 18 / 13,
  color: Colors.black,
);

const kMcqLabelTextStyle = TextStyle(
  fontFamily: 'SF Pro Display',
  fontWeight: FontWeight.w400,
  fontSize: 12,
  height: 20 / 12,
  color: Color(0xff606060),
);

const kParagraphTextStyle = TextStyle(
  fontFamily: 'SF Pro Display',
  fontWeight: FontWeight.w400,
  fontSize: 14,
  height: 21 / 14,
  color: Color(0xff606060),
);

const kProgressBarTextStyle = TextStyle(
  fontFamily: 'SF Pro Display',
  fontWeight: FontWeight.w600,
  fontSize: 10,
  height: 20 / 10,
  color: Colors.white,
);
