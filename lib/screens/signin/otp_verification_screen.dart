
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:sizer/sizer.dart';
import '../../common/app_colors.dart';
import '../../common/app_custom_size.dart';
import '../../common/custom_text_styles.dart';
import '../../common/widgets/common_appbar.dart';
import '../../common/widgets/main_btn.dart';

class OtpVerificationScreen extends StatefulWidget {
  static const routeName = "/otp-verification-screen";
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  TextEditingController pinCodeController = TextEditingController();
  final defaultPinTheme = PinTheme(
    width: (100.w - 80) / 6,
    height: (100.w - 80) / 6,
    textStyle: CustomTextStyles.regularStyle(fontSize: 20, color: Colors.black),
    decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.greyBorder)),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar(),
      body: Padding(
        padding: EdgeInsets.all(CustomSize.getWidth(16)),
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: CustomSize.getHeight(32),
                    bottom: CustomSize.getHeight(16)),
                child: Text(
                  "Phone Number Verification",
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.loginHeaderStyle(
                      color: const Color(0xff101828)),
                ),
              ),
              Text(
                "Check your inbox to code has been sent to",
                textAlign: TextAlign.center,
                style: CustomTextStyles.regularStyle(
                    fontSize: 14, color: const Color(0xff6B7280)),
              ),
              const SizedBox(height: 16),
              Text(
                "+3371030000657",
                textAlign: TextAlign.center,
                style: CustomTextStyles.regularStyle(
                    fontSize: 14, color: const Color(0xff6B7280)),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: CustomSize.getHeight(32),
                    bottom: CustomSize.getHeight(16)),
                child: Text(
                  "Enter the code",
                  textAlign: TextAlign.start,
                  style: CustomTextStyles.regularStyle(
                      fontSize: 16, color: Colors.black),
                ),
              ),
              Pinput(
                controller: pinCodeController,
                length: 6,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // separator: const SizedBox(width: 15),
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: defaultPinTheme.copyWith(
                  decoration: defaultPinTheme.decoration!.copyWith(
                    border: Border.all(color: AppColors.orange),
                  ),
                ),
                errorPinTheme: defaultPinTheme.copyWith(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: CustomSize.getHeight(16),
                    bottom: CustomSize.getHeight(32)),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: AbsorbPointer(
                    child: TextButton(
                      onPressed: () async {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: Text(
                        "Resend Code",
                        textAlign: TextAlign.end,
                        style: CustomTextStyles.regularStyle(
                            fontSize: 16, color: AppColors.red),
                      ),
                    ),
                  ),
                ),
              ),
              MainBtn(
                onClick: () {},
                lbl: "Submit Code",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
