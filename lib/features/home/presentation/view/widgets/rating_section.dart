import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/width_manager.dart';
import 'package:phone_zone/features/home/data/model/phone_model.dart';

class RatingSection extends StatelessWidget {
  const RatingSection({
    super.key,
    required this.textStyle,
    required this.phoneModel,
  });
  final TextStyle textStyle;
  final PhoneModel phoneModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: ColorManager.ratingColor),
        SizedBox(width: WidthManager.w4),
        Text(phoneModel.rating.toString(), style: textStyle),
      ],
    );
  }
}
