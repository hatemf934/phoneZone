import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/font_size_manager.dart';
import 'package:phone_zone/core/utils/styles.dart';
import 'package:phone_zone/features/home/data/model/phone_model.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/rating_section.dart';

class RowRatingProductView extends StatelessWidget {
  const RowRatingProductView({super.key, required this.phoneModel});
  final PhoneModel phoneModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          phoneModel.title,
          style: Styles.firaSans18.copyWith(color: ColorManager.colorBlack87),
        ),
        RatingSection(
          phoneModel: phoneModel,
          textStyle: Styles.styleBlck87.copyWith(
            fontSize: FontSizeManager.font18,
          ),
        ),
      ],
    );
  }
}
