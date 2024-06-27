import 'package:flutter/material.dart';

import '../../../common/custom_text_styles.dart';

class DividerComponent extends StatelessWidget {
  final Color strokeColor;
  const DividerComponent({super.key, this.strokeColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Divider(
            color: strokeColor,
            thickness: 1.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text('OR',
              style: CustomTextStyles.regularStyle(
                  color: const Color(0xff667085), fontSize: 14)),
        ),
        Expanded(
          child: Divider(
            color: strokeColor,
            thickness: 1.0,
          ),
        ),
      ],
    );
  }
}
