import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/font_size_manager.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/utils/raduis_manager.dart';
import 'package:phone_zone/core/utils/styles.dart';
import 'package:phone_zone/core/utils/text_manager.dart';
import 'package:phone_zone/core/utils/width_manager.dart';

class AddProductToCardSection extends StatelessWidget {
  const AddProductToCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '${TextManager.productCurrencySymbol}${300.toStringAsFixed(0)}',
          style: Styles.styleBlck87.copyWith(
            fontSize: FontSizeManager.font18,
            color: Colors.lightGreen,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: WidthManager.w35,
            height: HeightManager.h35,
            decoration: BoxDecoration(
              color: ColorManager.primaryColor,
              borderRadius: BorderRadius.circular(RaduisManager.r10),
            ),
            child: Icon(
              Icons.add,
              color: ColorManager.colorWhite,
              size: FontSizeManager.font24,
            ),
          ),
        ),
      ],
    );
  }
}
