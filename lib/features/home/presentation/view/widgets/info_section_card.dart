import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/font_size_manager.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/utils/padding_manager.dart';
import 'package:phone_zone/core/utils/styles.dart';
import 'package:phone_zone/features/home/data/model/phone_model.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/add_prosuct_to_card_section.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/rating_section.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({super.key, required this.phoneModel});
  final PhoneModel phoneModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: PaddingManager.p10,
        horizontal: PaddingManager.p13,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            phoneModel.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Styles.styleBlck87.copyWith(
              fontSize: FontSizeManager.font14,
            ),
          ),
          const SizedBox(height: HeightManager.h3),
          Text(
            phoneModel.desc,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Styles.styleGrey.copyWith(fontSize: FontSizeManager.font11),
          ),
          const SizedBox(height: HeightManager.h6),
          RatingSection(textStyle: Styles.styleBlck87, phoneModel: phoneModel),
          const SizedBox(height: HeightManager.h3),
          AddProductToCardSection(phoneModel: phoneModel),
        ],
      ),
    );
  }
}
