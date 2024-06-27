// ignore_for_file: constant_identifier_names

import 'package:sizer/sizer.dart';

class CustomSize {
  static const SCREEN_HEIGHT = 820;
  static const SCREEN_WIDTH = 375;
  static getHeight(double px) {
    return ((px / SCREEN_HEIGHT) * 100).h;
  }

  static getWidth(double px) {
    return ((px / SCREEN_WIDTH) * 100).w;
  }

  static getFontSize(double px) {
    return (px / 1.3).sp;
  }
}
