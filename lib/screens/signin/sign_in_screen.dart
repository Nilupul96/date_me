import 'dart:io';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
import '../../common/app_assets.dart';
import '../../common/app_colors.dart';
import '../../common/app_custom_size.dart';
import '../../common/app_icons.dart';
import '../../common/widgets/common_appbar.dart';
import '../../common/widgets/main_btn.dart';
import '../../helpers/countries.dart';
import '../onboarding/create_profile_screen.dart';
import 'widgets/divider_component.dart';
import 'widgets/social_media_btn.dart';

class SignInScreen extends StatefulWidget {
  static const routeName = "/sign-in-screen";
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  bool _autoValidate = false;
  PhoneNumber? _phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar(),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        physics: const AlwaysScrollableScrollPhysics(),
        child: Form(
          key: _key,
          autovalidateMode: _autoValidate
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Padding(
            padding: EdgeInsets.all(CustomSize.getWidth(16)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: CustomSize.getHeight(32)),
                  child: Text(
                    "Find Your Reel Match Nearby",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
                IntlPhoneField(
                  countries: allowedCountries,
                  style: TextStyle(color: AppColors.greyBorder),
                  decoration: InputDecoration(
                    hintText: 'Enter Phone Number',
                    contentPadding: const EdgeInsets.all(5),
                    hintStyle: TextStyle(color: AppColors.greyBorder),
                    counterText: '',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.greyBorder),
                        borderRadius: BorderRadius.circular(50)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.greyBorder),
                        borderRadius: BorderRadius.circular(50)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.greyBorder),
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  initialCountryCode: 'FR',
                  onChanged: (phone) {
                    setState(() {
                      _phoneNumber = phone;
                    });
                  },
                ),
                SizedBox(height: CustomSize.getHeight(24)),
                MainBtn(
                  onClick: () {
                    Navigator.of(context)
                        .pushNamed(CreateProfileScreen.routeName);
                  },
                  lbl: "Receive Code",
                ),
                Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: CustomSize.getHeight(32)),
                    child: const DividerComponent(
                      strokeColor: Color(0xffEAECF0),
                    )),
                SocialMediaBtn(
                  onClick: () {},
                  lbl: "Sign up with Google",
                  bgColor: Colors.white.withOpacity(0.75),
                  icon: AppIcon.googleIcon,
                ),
                SocialMediaBtn(
                  onClick: () {
                    AdaptiveTheme.of(context).toggleThemeMode(useSystem: false);
                  },
                  lbl: "Sign up with Facebook",
                  bgColor: Colors.white.withOpacity(0.75),
                  icon: AppIcon.facebookIcon,
                ),
                if (Platform.isIOS)
                  SocialMediaBtn(
                    onClick: () {},
                    lbl: "Sign up with Apple",
                    bgColor: const Color(0xffFFFFFF).withOpacity(0.75),
                    icon: AppIcon.appleIcon,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
