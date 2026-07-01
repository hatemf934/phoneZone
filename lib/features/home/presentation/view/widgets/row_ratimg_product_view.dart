import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/font_size_manager.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/utils/padding_manager.dart';
import 'package:phone_zone/core/utils/raduis_manager.dart';
import 'package:phone_zone/core/utils/styles.dart';
import 'package:phone_zone/features/home/data/model/phone_model.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/rating_section.dart';

class RatingProductView extends StatelessWidget {
  const RatingProductView({super.key, required this.phoneModel});
  final PhoneModel phoneModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: PaddingManager.p8,
            vertical: PaddingManager.p5,
          ),
          decoration: BoxDecoration(
            color: ColorManager.colorBlack87.withAlpha(30),
            borderRadius: BorderRadius.circular(RaduisManager.r8),
          ),
          child: Text(
            phoneModel.brand,
            style: Styles.firaSans15.copyWith(color: ColorManager.colorBlack87),
          ),
        ),
        SizedBox(height: HeightManager.h10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              phoneModel.title,
              style: Styles.firaSans18.copyWith(
                color: ColorManager.colorBlack87,
              ),
            ),
            RatingSection(
              phoneModel: phoneModel,
              textStyle: Styles.styleBlck87.copyWith(
                fontSize: FontSizeManager.font18,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
