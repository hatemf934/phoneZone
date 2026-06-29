import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/font_size_manager.dart';
import 'package:phone_zone/core/utils/styles.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/rating_section.dart';

class RowRatingProductView extends StatelessWidget {
  const RowRatingProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "iPhone 14 Pro",
          style: Styles.firaSans18.copyWith(color: ColorManager.colorBlack87),
        ),
        RatingSection(
          textStyle: Styles.styleBlck87.copyWith(
            fontSize: FontSizeManager.font18,
          ),
        ),
      ],
    );
  }
}
