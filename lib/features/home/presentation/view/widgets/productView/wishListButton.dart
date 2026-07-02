import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/utils/raduis_manager.dart';
import 'package:phone_zone/core/utils/width_manager.dart';

class WishlistButton extends StatefulWidget {
  const WishlistButton({super.key});

  @override
  State<WishlistButton> createState() => _WishlistButtonState();
}

class _WishlistButtonState extends State<WishlistButton> {
  bool isWishlisted = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => isWishlisted = !isWishlisted),
      child: Container(
        width: WidthManager.w50,
        height: HeightManager.h50,
        decoration: BoxDecoration(
          color: ColorManager.badgeBackground,
          borderRadius: BorderRadius.circular(RaduisManager.r14),
        ),
        child: Icon(
          isWishlisted ? Icons.favorite : Icons.favorite_border,
          color: isWishlisted ? ColorManager.colorred : ColorManager.colorWhite,
          size: 22,
        ),
      ),
    );
  }
}
