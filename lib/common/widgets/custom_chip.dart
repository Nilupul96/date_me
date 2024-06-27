
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../helpers/enum.dart';
import '../app_assets.dart';
import '../app_colors.dart';
import '../custom_text_styles.dart';

class CustomChip extends StatelessWidget {
  final String text;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final ChipType? chipType;
  const CustomChip(
      {super.key,
      required this.text,
      this.margin = const EdgeInsets.only(bottom: 12, right: 12),
      this.padding = const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      this.chipType});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: const Color(0xff272727)),
      margin: margin,
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (chipType != null)
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: getLeadingIcon(chipType!),
            ),
          Text(text,
              style: CustomTextStyles.subRegularStyle(color: AppColors.white))
        ],
      ),
    );
  }

  Widget getLeadingIcon(ChipType type) {
    switch (type) {
      case ChipType.HEIGHT:
        return SvgPicture.asset(AppAssets.heightIcon);
      case ChipType.WEIGHT:
        return SvgPicture.asset(AppAssets.weightIcon);
      case ChipType.EDUCATION:
        return SvgPicture.asset(AppAssets.bookIcon);
      case ChipType.ALCOHOL:
        return SvgPicture.asset(AppAssets.drinkIcon);
      case ChipType.SMOKE:
        return SvgPicture.asset(AppAssets.smokeIcon);
      default:
        return const SizedBox();
    }
  }
}
