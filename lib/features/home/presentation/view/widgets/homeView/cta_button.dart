import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/font_size_manager.dart';
import 'package:phone_zone/core/utils/padding_manager.dart';
import 'package:phone_zone/core/utils/raduis_manager.dart';
import 'package:phone_zone/core/utils/styles.dart';
import 'package:phone_zone/core/utils/text_manager.dart';

class CtaButton extends StatelessWidget {
  const CtaButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: PaddingManager.p20,
          vertical: PaddingManager.p10,
        ),
        decoration: BoxDecoration(
          color: ColorManager.colorWhite,
          borderRadius: BorderRadius.circular(RaduisManager.r10),
        ),
        child: Text(
          TextManager.promoBannerCta,
          style: Styles.styleBlck87.copyWith(fontSize: FontSizeManager.font14),
        ),
      ),
    );
  }
}
