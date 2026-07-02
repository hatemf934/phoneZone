import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/padding_manager.dart';
import 'package:phone_zone/core/utils/raduis_manager.dart';
import 'package:phone_zone/core/utils/styles.dart';

class CategoryChip extends StatelessWidget {
  const CategoryChip({
    super.key,
    required this.label,
    required this.onTap,
    this.isSelected = false,
  });

  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(
          horizontal: PaddingManager.p20,
          vertical: PaddingManager.p10,
        ),
        decoration: BoxDecoration(
          color: isSelected
              ? ColorManager.primaryColor
              : ColorManager.badgeBackground,
          borderRadius: BorderRadius.circular(RaduisManager.r25),
          border: Border.all(
            color: isSelected
                ? ColorManager.primaryColor
                : ColorManager.badgeBackground,
            width: 2,
          ),
        ),
        child: Center(
          child: Text(
            label,
            style: Styles.firaSans15.copyWith(color: ColorManager.colorWhite),
          ),
        ),
      ),
    );
  }
}
