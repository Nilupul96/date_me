import 'package:flutter/material.dart';

class AppColors {
  static Color get bgBlue => const Color(0XFF2D74FF);
  static Color get red => const Color(0XFFFF3866);
  static Color get orange => const Color(0XFFFFAC4A);
  static Color get darkOrange => const Color(0xffFBAA47);
  static Color get lightRed => const Color(0xffFF5F6D);
  static Color get white => const Color(0xffFFFFFF);
  static Color get greyBorder => const Color(0xffD0D5DD);
  static Color get grey => const Color(0xff6b7280);
  static Color get lightGrey => const Color(0xffd1d5db);

  static Gradient get btnGradient => const LinearGradient(
        colors: [Color(0xFFFBAA47), Color(0xFFFF5F6D)],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      );
}
