import 'package:flutter/material.dart';
import '../screens/home_base_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/onboarding/create_profile_screen.dart';
import '../screens/onboarding/upload_photos_screen.dart';
import '../screens/signin/otp_verification_screen.dart';
import '../screens/signin/sign_in_screen.dart';
import '../screens/splash_screen.dart';

class AppRoutes {
  static final Map<String, WidgetBuilder> _routes = {
    SplashScreen.routeName: (ctx) => const SplashScreen(),
    HomeBaseScreen.routeName: (ctx) => const HomeBaseScreen(),
    HomeScreen.routeName: (ctx) => const HomeScreen(),
    SignInScreen.routeName: (ctx) => const SignInScreen(),
    OtpVerificationScreen.routeName: (ctx) => const OtpVerificationScreen(),
    CreateProfileScreen.routeName: (ctx) => const CreateProfileScreen(),
    UploadPhotosScreen.routeName: (ctx) => const UploadPhotosScreen()
  };

  static get routes => _routes;
}
