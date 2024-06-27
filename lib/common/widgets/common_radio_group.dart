
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../app_colors.dart';
import '../custom_text_styles.dart';

class RadioGroup extends StatefulWidget {
  final String question;
  final List<String> options;
  final ValueChanged<int> onChanged;

  RadioGroup({
    required this.question,
    required this.options,
    required this.onChanged,
  });

  @override
  _RadioGroupState createState() => _RadioGroupState();
}

class _RadioGroupState extends State<RadioGroup> {
  int selectedOptionIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.question,
          style: CustomTextStyles.regularStyle(
              fontSize: 16.0, color: AppColors.grey),
        ),
        SizedBox(height: 10),
        Wrap(
          direction: Axis.horizontal,
          runSpacing: 0,
          children: widget.options.asMap().entries.map((entry) {
            final index = entry.key;
            final option = entry.value;
            return SizedBox(
              width: (100.w - 50) / 3,
              child: ListTile(
                contentPadding: const EdgeInsets.all(0),
                title: Text(
                  option,
                  style: CustomTextStyles.regularStyle(
                      fontSize: 14.0, color: AppColors.grey),
                ),
                horizontalTitleGap: 0,
                leading: Radio<int>(
                  value: index,
                  groupValue: selectedOptionIndex,
                  activeColor: Colors.red,
                  onChanged: (value) {
                    setState(() {
                      selectedOptionIndex = value!;
                      widget.onChanged(value);
                    });
                  },
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
