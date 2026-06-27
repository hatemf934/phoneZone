import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/font_size_manager.dart';
import 'package:phone_zone/core/utils/padding_manager.dart';
import 'package:phone_zone/core/utils/raduis_manager.dart';
import 'package:phone_zone/core/utils/styles.dart';
import 'package:phone_zone/core/utils/text_manager.dart';
import 'package:phone_zone/core/utils/width_manager.dart';

class SortButton extends StatelessWidget {
  const SortButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: PaddingManager.p13,
          vertical: PaddingManager.p5,
        ),
        decoration: BoxDecoration(
          color: ColorManager.sortButtonBorder,
          boxShadow: [
            BoxShadow(
              color: ColorManager.colorBlack87.withAlpha(20),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
          borderRadius: BorderRadius.circular(RaduisManager.r10),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              TextManager.sectionSortButton,
              style: Styles.styleBlck87.copyWith(
                fontSize: FontSizeManager.font14,
              ),
            ),
            const SizedBox(width: WidthManager.w4),
            const Icon(
              Icons.swap_vert,
              size: FontSizeManager.font16,
              color: ColorManager.colorBlack87,
            ),
          ],
        ),
      ),
    );
  }
}
