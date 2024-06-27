import 'package:flutter/material.dart';

import '../../../common/app_custom_size.dart';

class CommonIconBtn extends StatefulWidget {
  final Widget icon;
  const CommonIconBtn({super.key, required this.icon});

  @override
  State<CommonIconBtn> createState() => _CommonIconBtnState();
}

class _CommonIconBtnState extends State<CommonIconBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: CustomSize.getHeight(48),
      width: CustomSize.getHeight(48),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color(0xffAFAFAF).withOpacity(0.3),
      ),
      child: Center(
        child: widget.icon,
      ),
    );
  }
}
