import 'package:date_me/screens/home/widgets/icon_btn.dart';
import 'package:date_me/screens/home/widgets/like_btn.dart';
import 'package:date_me/screens/home/widgets/super_like_btn.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import '../../../common/app_custom_size.dart';

class LikeBtnComponent extends StatefulWidget {
  final Function onLikeClick;
  final Function onSuperLikeClick;
  final Function onCloseClick;
  final bool isFavorite;
  const LikeBtnComponent(
      {super.key,
      required this.onLikeClick,
      required this.onSuperLikeClick,
      required this.onCloseClick,
      required this.isFavorite});

  @override
  State<LikeBtnComponent> createState() => _LikeBtnComponentState();
}

class _LikeBtnComponentState extends State<LikeBtnComponent> {
  bool isLiked = false;
  bool isSuperLiked = false;
  bool isLikeAnimationLoading = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        InkWell(
          onTap: () => widget.onCloseClick(),
          child: const CommonIconBtn(
            icon: Icon(
              Icons.close,
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: CustomSize.getWidth(32)),
            child: LikeButton(
                isLiked: isLiked,
                onTap: (isLiked) => widget.onSuperLikeClick(isLiked),
                size: CustomSize.getHeight(60),
                likeCount: null,
                likeBuilder: (bool isLiked) {
                  return const SuperLikeBtn();
                })),
        HeartLikeButton(
          onPressed: widget.onLikeClick,
          isFavorite: widget.isFavorite,
        ),
      ],
    );
  }
}
