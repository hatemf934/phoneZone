import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/utils/padding_manager.dart';
import 'package:phone_zone/core/utils/width_manager.dart';
import 'package:shimmer/shimmer.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/raduis_manager.dart';

class ProductCardShimmer extends StatelessWidget {
  const ProductCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: ColorManager.colorWhite,
        borderRadius: BorderRadius.circular(RaduisManager.r10),
      ),
      child: Shimmer.fromColors(
        baseColor: ColorManager.baseColor,
        highlightColor: ColorManager.highlightColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(color: ColorManager.colorWhite),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: PaddingManager.p10,
                right: PaddingManager.p13,
                left: PaddingManager.p3,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: HeightManager.h10,
                    width: WidthManager.w120,
                    color: ColorManager.colorWhite,
                  ),
                  const SizedBox(height: HeightManager.h6),
                  Container(
                    height: HeightManager.h10,
                    width: double.infinity,
                    color: ColorManager.colorWhite,
                  ),
                  const SizedBox(height: HeightManager.h6),
                  Container(
                    height: HeightManager.h10,
                    width: WidthManager.w50,
                    color: ColorManager.colorWhite,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
