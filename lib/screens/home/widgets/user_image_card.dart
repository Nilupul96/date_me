import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import '../../../common/app_assets.dart';
import '../../../common/app_colors.dart';
import '../../../common/app_custom_size.dart';
import '../../../common/custom_text_styles.dart';
import '../../../helpers/app_logger.dart';
import '../../../shimmers/image_shimmer.dart';

class UserImageCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String? distance;
  final Widget header;
  const UserImageCard(
      {super.key,
      required this.name,
      required this.imageUrl,
      this.distance,
      required this.header});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 100.w,
          height: 100.h,
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
            width: 100.w,
            height: 100.h,
            errorBuilder: (context, url, error) {
              Log.err('----image error----$error');
              return const SizedBox();
            },
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return const SizedBox();
            },
          ),
        ),
        Container(
          width: 100.w,
          height: 100.h,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            const Color(0xff000000),
            const Color(0xff121212).withOpacity(0.2),
          ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
        ),
        Positioned(
            left: 0, right: 0, top: CustomSize.getHeight(60), child: header),
        Positioned(
            bottom: CustomSize.getHeight(242),
            left: 0,
            right: 0,
            child: _buildUserDetails())
      ],
    );
  }

  Widget _buildUserDetails() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            name,
            textAlign: TextAlign.center,
            style: CustomTextStyles.headerStyle(color: AppColors.white),
          ),
          Text(
            "#Festival,Music",
            style: CustomTextStyles.regularStyle(
                color: AppColors.white, fontSize: 16),
          ),
          if (distance != null)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppAssets.distanceIcon),
                const SizedBox(width: 4),
                Text(
                  distance ?? '',
                  style: CustomTextStyles.regularStyle(
                      color: AppColors.white, fontSize: 16),
                ),
              ],
            )
        ],
      ),
    );
  }
}
