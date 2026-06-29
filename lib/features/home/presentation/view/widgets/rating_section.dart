import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/width_manager.dart';

class RatingSection extends StatelessWidget {
  const RatingSection({super.key, required this.textStyle});
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: ColorManager.ratingColor),
        SizedBox(width: WidthManager.w4),
        Text("4.6", style: textStyle),
      ],
    );
  }
}
