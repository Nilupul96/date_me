import 'package:date_me/screens/home/widgets/icon_btn.dart';
import 'package:flutter/material.dart';
import '../../../common/app_colors.dart';

class HeartLikeButton extends StatefulWidget {
  final Function onPressed;
  final double scaleUp;
  final bool isFavorite;

  const HeartLikeButton(
      {super.key,
      required this.onPressed,
      this.scaleUp = 1.5,
      required this.isFavorite});

  @override
  _HeartLikeButtonState createState() => _HeartLikeButtonState();
}

class _HeartLikeButtonState extends State<HeartLikeButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 150),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _controller.forward();
        Future.delayed(const Duration(milliseconds: 800), () {
          _controller.reverse();
        });
        widget.onPressed();
      },
      child: CommonIconBtn(
          icon: ScaleTransition(
        scale: Tween<double>(
          begin: 1.0,
          end: widget.scaleUp,
        ).animate(_controller),
        child: Icon(
          Icons.favorite,
          color: widget.isFavorite ? Colors.red : AppColors.white,
        ),
      )),
    );
  }
}
