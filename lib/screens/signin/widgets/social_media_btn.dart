import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/app_colors.dart';
import '../../../common/app_custom_size.dart';

class SocialMediaBtn extends StatefulWidget {
  final String lbl;
  final Function onClick;
  final bool isLoading;
  final bool isEnabled;
  final Color? bgColor;
  final String? icon;

  const SocialMediaBtn(
      {Key? key,
      this.lbl = "",
      this.bgColor,
      required this.onClick,
      this.isLoading = false,
      this.isEnabled = true,
      this.icon})
      : super(key: key);

  @override
  State<SocialMediaBtn> createState() => _SocialMediaBtnState();
}

class _SocialMediaBtnState extends State<SocialMediaBtn> {
  bool showAnim = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: CustomSize.getHeight(16)),
      child: SizedBox(
        width: double.infinity,
        height: CustomSize.getHeight(44),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: widget.bgColor,
              elevation: 0.0,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: AppColors.greyBorder),
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
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (widget.icon != null) SvgPicture.asset(widget.icon!),
                      SizedBox(width: CustomSize.getWidth(12)),
                      Text(widget.lbl,
                          style: TextStyle(
                            fontSize: CustomSize.getFontSize(16),
                            fontWeight: FontWeight.normal,
                            fontFamily: "Rubik",
                            color: Colors.black,
                          )),
                    ],
                  )),
      ),
    );
  }
}
