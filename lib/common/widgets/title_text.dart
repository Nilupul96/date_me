
import 'package:flutter/material.dart';
import '../app_colors.dart';
import '../app_custom_size.dart';
import '../custom_text_styles.dart';

class TitleText extends StatelessWidget {
  final String title;
  final bool isEnableSeeAll;
  const TitleText(
      {super.key, required this.title, this.isEnableSeeAll = false});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: CustomSize.getWidth(16),
          bottom: CustomSize.getHeight(16),
          right: CustomSize.getWidth(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: CustomTextStyles.subHeaderStyle(color: AppColors.white),
            ),
            if (isEnableSeeAll)
              InkWell(
                child: Text(
                  "See all",
                  style: CustomTextStyles.subHeaderStyle(
                      color: AppColors.orange, fontSize: 14),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
