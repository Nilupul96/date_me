import 'package:flutter/material.dart';

import '../../../common/app_colors.dart';
import '../../../common/app_custom_size.dart';

class SuperLikeBtn extends StatefulWidget {
  const SuperLikeBtn({super.key});

  @override
  State<SuperLikeBtn> createState() => _SuperLikeBtnState();
}

class _SuperLikeBtnState extends State<SuperLikeBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: CustomSize.getHeight(60),
      width: CustomSize.getHeight(60),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(colors: [
            AppColors.darkOrange,
            AppColors.lightRed,
          ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
      child: Center(
          child: Icon(
        Icons.star_rounded,
        size: CustomSize.getHeight(40),
        shadows: [
          BoxShadow(
              offset: const Offset(0, 4),
              blurRadius: 4,
              color: const Color(0xff000000).withOpacity(0.05))
        ],
      )),
    );
  }
}
