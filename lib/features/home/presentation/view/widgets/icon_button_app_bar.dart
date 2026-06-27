import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/font_size_manager.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/utils/padding_manager.dart';
import 'package:phone_zone/core/utils/raduis_manager.dart';
import 'package:phone_zone/core/utils/styles.dart';
import 'package:phone_zone/core/utils/text_manager.dart';
import 'package:phone_zone/core/utils/width_manager.dart';

class IconButtonAppBar extends StatelessWidget {
  final IconData icon;
  final int badgeCount;
  final bool showDot;
  final VoidCallback? onTap;

  const IconButtonAppBar({
    super.key,
    required this.icon,
    this.badgeCount = 0,
    this.showDot = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: WidthManager.w40,
            height: HeightManager.h40,
            decoration: BoxDecoration(
              color: ColorManager.colorWhite,
              borderRadius: BorderRadius.circular(RaduisManager.r10),
            ),
            child: Icon(
              icon,
              size: FontSizeManager.font24,
              color: ColorManager.colorBlack87,
            ),
          ),

          if (badgeCount > 0)
            Positioned(
              top: -6,
              right: -4,
              child: Container(
                padding: const EdgeInsets.all(PaddingManager.p3),
                decoration: const BoxDecoration(
                  color: ColorManager.colorred,
                  shape: BoxShape.circle,
                ),
                constraints: const BoxConstraints(
                  minWidth: WidthManager.w16,
                  minHeight: HeightManager.h16,
                ),
                child: Text(
                  badgeCount > 99 ? TextManager.badgeOverflow : '$badgeCount',
                  style: Styles.styleWhite.copyWith(
                    fontSize: FontSizeManager.font9,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

          if (showDot && badgeCount == 0)
            Positioned(
              top: -3,
              right: -3,
              child: Container(
                width: WidthManager.w10,
                height: HeightManager.h10,
                decoration: BoxDecoration(
                  color: ColorManager.colorred,
                  shape: BoxShape.circle,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
