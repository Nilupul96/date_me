import 'package:flutter/material.dart';
import '../app_assets.dart';
import '../app_colors.dart';

class CommonAppBar extends AppBar {
  CommonAppBar({
    Key? key,
    String? title,
    List<Widget>? actions,
  }) : super(
            key: key,
            title: Image.asset(
              AppAssets.logo,
              height: 100,
            ),
            actions: actions,
            centerTitle: true,
            elevation: 0.0,
            automaticallyImplyLeading: true,
            iconTheme: const IconThemeData(color: Color(0xff6b7280)),
            backgroundColor: AppColors.white);
}
