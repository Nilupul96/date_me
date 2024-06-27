
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../common/app_assets.dart';
import '../common/app_colors.dart';
import 'home_base_screen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = "/splash-screen";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigate();
    super.initState();
  }

  Future<void> navigate() async {
    await Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, HomeBaseScreen.routeName, (route) => false);
    });
  }

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: 100.h,
          width: 100.w,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            AppColors.orange,
            AppColors.lightRed,
          ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
        ),
        Align(
          alignment: Alignment.center,
          child: Image.asset(
            AppAssets.logo,
          ),
        )
      ],
    ));
  }
}
