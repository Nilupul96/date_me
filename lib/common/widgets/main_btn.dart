
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../app_colors.dart';
import '../app_custom_size.dart';

class MainBtn extends StatefulWidget {
  final String lbl;
  final Function onClick;
  final bool isLoading;
  final bool isEnabled;

  final Color? bgColor;
  final String? icon;
  final bool disableSplash;

  const MainBtn(
      {Key? key,
      this.lbl = "",
      this.bgColor,
      required this.onClick,
      this.isLoading = false,
      this.isEnabled = true,
      this.disableSplash = false,
      this.icon})
      : super(key: key);

  @override
  State<MainBtn> createState() => _MainBtnState();
}

class _MainBtnState extends State<MainBtn> {
  bool showAnim = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: CustomSize.getHeight(44),
      child: Ink(
        decoration: BoxDecoration(
            gradient: AppColors.btnGradient,
            borderRadius: BorderRadius.circular(50.0),
            boxShadow: [
              BoxShadow(
                  color: const Color(0xff101828).withOpacity(0.05),
                  blurRadius: 2,
                  offset: const Offset(0, 1))
            ]),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            onPressed: widget.isEnabled
                ? !widget.isLoading
                    ? () async {
                        await widget.onClick();
                      }
                    : null
                : null,
            child: widget.isLoading
                ? const SizedBox(
                    width: 30,
                    height: 30,
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.transparent,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  )
                : widget.icon != null
                    ? SvgPicture.asset(widget.icon!)
                    : Text(widget.lbl,
                        style: TextStyle(
                          fontSize: CustomSize.getFontSize(16),
                          fontWeight: FontWeight.w600,
                          fontFamily: "Rubik",
                          color: Colors.white,
                        ))),
      ),
    );
  }
}
