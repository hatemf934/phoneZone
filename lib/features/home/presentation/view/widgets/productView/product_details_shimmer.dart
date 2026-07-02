import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/utils/width_manager.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/raduis_manager.dart';

class ProductDetailsShimmer extends StatelessWidget {
  const ProductDetailsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorManager.baseColor,
      highlightColor: ColorManager.highlightColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: HeightManager.h20),
          Container(
            height: HeightManager.h300,
            decoration: BoxDecoration(
              color: ColorManager.colorWhite,
              borderRadius: BorderRadius.circular(RaduisManager.r10),
            ),
          ),
          const SizedBox(height: HeightManager.h10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: HeightManager.h16,
                width: WidthManager.w120,
                color: ColorManager.colorWhite,
              ),
              Container(
                height: HeightManager.h16,
                width: WidthManager.w50,
                color: ColorManager.colorWhite,
              ),
            ],
          ),
          const SizedBox(height: HeightManager.h10),
          Row(
            children: [
              Container(
                height: HeightManager.h20,
                width: WidthManager.w50,
                color: ColorManager.colorWhite,
              ),
              const SizedBox(width: WidthManager.w10),
              Container(
                height: HeightManager.h20,
                width: WidthManager.w50,
                decoration: BoxDecoration(
                  color: ColorManager.colorWhite,
                  borderRadius: BorderRadius.circular(RaduisManager.r10),
                ),
              ),
            ],
          ),
          const SizedBox(height: HeightManager.h20),
          Container(
            height: HeightManager.h10,
            width: double.infinity,
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
            width: WidthManager.w120,
            color: ColorManager.colorWhite,
          ),
          const SizedBox(height: HeightManager.h20),
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: ColorManager.colorWhite,
              borderRadius: BorderRadius.circular(RaduisManager.r10),
            ),
          ),
        ],
      ),
    );
  }
}
