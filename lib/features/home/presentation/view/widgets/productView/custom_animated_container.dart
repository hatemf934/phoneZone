import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/font_size_manager.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/utils/padding_manager.dart';
import 'package:phone_zone/core/utils/raduis_manager.dart';
import 'package:phone_zone/core/utils/styles.dart';
import 'package:phone_zone/core/utils/text_manager.dart';
import 'package:phone_zone/core/utils/width_manager.dart';

class CustomAnimatedContainer extends StatelessWidget {
  const CustomAnimatedContainer({super.key, required this.added});
  final bool added;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: HeightManager.h50,
      padding: const EdgeInsets.symmetric(horizontal: PaddingManager.p20),
      decoration: BoxDecoration(
        color: added ? ColorManager.colorGreen : ColorManager.primaryColor,
        borderRadius: BorderRadius.circular(RaduisManager.r14),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            child: Icon(
              added ? Icons.check : Icons.shopping_cart_outlined,
              color: ColorManager.colorWhite,
              size: FontSizeManager.font20,
            ),
          ),
          const SizedBox(width: WidthManager.w10),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            child: Text(
              added ? TextManager.added : TextManager.addToCart,
              style: Styles.styleWhite.copyWith(
                fontSize: FontSizeManager.font15,
                letterSpacing: 0.3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
