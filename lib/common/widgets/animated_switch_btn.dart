import 'dart:math';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import '../../const/tab_type.dart';
import '../app_colors.dart';
import '../app_custom_size.dart';

class AnimatedSwitchBtn extends StatefulWidget {
  final Function onSwitch;
  final int index;
  const AnimatedSwitchBtn(
      {super.key, required this.onSwitch, required this.index});

  @override
  State<AnimatedSwitchBtn> createState() => _AnimatedSwitchBtnState();
}

class _AnimatedSwitchBtnState extends State<AnimatedSwitchBtn> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: CustomSize.getWidth(100),
        child: AnimatedToggleSwitch<int>.size(
          current: widget.index,
          values: const [TabType.Movie, TabType.User],
          iconOpacity: 1,
          iconSize: const Size(22, 22),
          indicatorSize: const Size.fromWidth(100),
          iconBuilder: (value, size) {
            IconData data = Icons.movie_outlined;
            if (value == TabType.User) data = Icons.people_outline;
            return Icon(data, size: min(22, 22));
          },
          height: CustomSize.getHeight(44),
          borderColor: Colors.transparent,
          innerColor: AppColors.white.withOpacity(0.2),
          colorBuilder: (index) => AppColors.darkOrange,
          onChanged: (index) => widget.onSwitch(index),
        ));
  }
}
