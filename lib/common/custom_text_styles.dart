import 'package:flutter/material.dart';
import 'app_custom_size.dart';

class CustomTextStyles {
  static TextStyle headerStyle({Color color = Colors.black}) {
    return TextStyle(
        color: color,
        fontFamily: "Rubik",
        fontWeight: FontWeight.w500,
        fontSize: CustomSize.getFontSize(36));
  }

  static TextStyle subHeaderStyle(
      {Color color = Colors.black, double fontSize = 18}) {
    return TextStyle(
      fontSize: CustomSize.getFontSize(fontSize),
      fontWeight: FontWeight.w600,
      fontFamily: "Rubik",
      color: color,
    );
  }

  static TextStyle regularStyle(
      {Color color = Colors.black, double fontSize = 18}) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.normal,
      fontFamily: "Rubik",
      color: color,
    );
  }

  static TextStyle subRegularStyle({Color color = Colors.black}) {
    return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      fontFamily: "Rubik",
      color: color,
    );
  }

  static TextStyle loginHeaderStyle(
      {Color color = Colors.black, double fontSize = 24}) {
    return TextStyle(
      fontSize: CustomSize.getFontSize(fontSize),
      fontWeight: FontWeight.normal,
      fontFamily: "Rubik",
      color: color,
    );
  }

  static TextStyle btnLabelStyle({Color color = Colors.black}) {
    return TextStyle(
        color: color,
        fontFamily: "Rubik",
        fontWeight: FontWeight.w500,
        fontSize: CustomSize.getFontSize(14));
  }
}
