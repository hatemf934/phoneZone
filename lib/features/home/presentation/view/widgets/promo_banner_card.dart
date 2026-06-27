import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/font_size_manager.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/utils/padding_manager.dart';
import 'package:phone_zone/core/utils/raduis_manager.dart';
import 'package:phone_zone/core/utils/styles.dart';
import 'package:phone_zone/core/utils/text_manager.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/cta_button.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/promo_title.dart';

class PromoBannerCard extends StatelessWidget {
  const PromoBannerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.badgeBackground,
        borderRadius: BorderRadius.circular(RaduisManager.r25),
      ),
      padding: const EdgeInsets.all(PaddingManager.p20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          PromoBadge(),
          const SizedBox(height: HeightManager.h16),
          Text(
            TextManager.promoBannerTitle,
            style: Styles.styleWhite.copyWith(fontSize: FontSizeManager.font24),
          ),
          const SizedBox(height: HeightManager.h10),
          Text(TextManager.promoBannerSubtitle, style: Styles.styleGrey),
          const SizedBox(height: HeightManager.h20),
          CtaButton(),
        ],
      ),
    );
  }
}
