import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/font_size_manager.dart';
import 'package:phone_zone/core/utils/padding_manager.dart';
import 'package:phone_zone/core/utils/raduis_manager.dart';
import 'package:phone_zone/core/utils/text_manager.dart';

class PromoBadge extends StatelessWidget {
  const PromoBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: PaddingManager.p10,
        vertical: PaddingManager.p8,
      ),
      decoration: BoxDecoration(
        color: ColorManager.badgeTitleground,
        borderRadius: BorderRadius.circular(RaduisManager.r8),
      ),
      child: Text(
        TextManager.promoBadgeLabel,
        style: const TextStyle(
          color: ColorManager.badgeText,
          fontSize: FontSizeManager.font11,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.8,
        ),
      ),
    );
  }
}
