import 'dart:io';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'common/app_colors.dart';
import 'common/app_providers.dart';
import 'common/app_routes.dart';
import 'common/custom_text_styles.dart';
import 'helpers/navigation_service.dart';
import 'screens/signin/sign_in_screen.dart';
import 'screens/splash_screen.dart';

class DateMeHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() async {
  HttpOverrides.global = DateMeHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(MyApp(savedThemeMode: savedThemeMode));
}

class MyApp extends StatelessWidget {
  final AdaptiveThemeMode? savedThemeMode;
  const MyApp({Key? key, this.savedThemeMode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder:
        (BuildContext context, Orientation orientation, DeviceType deviceType) {
      return MultiProvider(
          providers: AppProviders.providers,
          child: AdaptiveTheme(
            light: ThemeData(
              brightness: Brightness.light,
              useMaterial3: false,
              textTheme: TextTheme(
                displayLarge: CustomTextStyles.loginHeaderStyle(
                    color: const Color(0xff101828)),
              ),
              inputDecorationTheme: InputDecorationTheme(
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide:
                          BorderSide(color: AppColors.lightGrey, width: 1.0)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide:
                          BorderSide(color: AppColors.lightGrey, width: 1.0)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide:
                          const BorderSide(color: Colors.red, width: 1.0)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide:
                          const BorderSide(color: Colors.red, width: 1.0)),
                  hintStyle: CustomTextStyles.regularStyle(
                      fontSize: 14, color: AppColors.grey)),
              scaffoldBackgroundColor: Colors.white,
              appBarTheme:
                  AppBarTheme(elevation: 0, backgroundColor: Colors.white),
            ),
            dark: ThemeData(
              brightness: Brightness.dark,
              useMaterial3: false,
              scaffoldBackgroundColor: Colors.black,
              inputDecorationTheme: InputDecorationTheme(
                  fillColor: Colors.black,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide:
                          BorderSide(color: AppColors.lightGrey, width: 1.0)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide:
                          BorderSide(color: AppColors.lightGrey, width: 1.0)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide:
                          const BorderSide(color: Colors.red, width: 1.0)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide:
                          const BorderSide(color: Colors.red, width: 1.0)),
                  hintStyle: CustomTextStyles.regularStyle(
                      fontSize: 14, color: AppColors.grey)),
              textTheme: TextTheme(
                displayLarge:
                    CustomTextStyles.loginHeaderStyle(color: Colors.white),
              ),
              appBarTheme: const AppBarTheme(color: Colors.black),
            ),
            initial: savedThemeMode ?? AdaptiveThemeMode.system,
            builder: (theme, darkTheme) => MaterialApp(
              navigatorKey: NavigationService.navigatorKey,
              theme: theme,
              routes: AppRoutes.routes,
              debugShowCheckedModeBanner: false,
              // initialRoute: SplashScreen.routeName,
              home: const SignInScreen(),
            ),
          ));
    });
  }
}
