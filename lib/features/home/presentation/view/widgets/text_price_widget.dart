import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/font_size_manager.dart';
import 'package:phone_zone/core/utils/padding_manager.dart';
import 'package:phone_zone/core/utils/raduis_manager.dart';
import 'package:phone_zone/core/utils/styles.dart';
import 'package:phone_zone/core/utils/text_manager.dart';
import 'package:phone_zone/core/utils/width_manager.dart';

class RowTextPriceWidget extends StatelessWidget {
  const RowTextPriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '${TextManager.productCurrencySymbol}${300.toStringAsFixed(2)}',
          style: Styles.styleBlck87.copyWith(
            fontSize: FontSizeManager.font22,
            color: ColorManager.colorGreen,
          ),
        ),
        const SizedBox(width: WidthManager.w10),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: PaddingManager.p8,
            vertical: PaddingManager.p5,
          ),
          decoration: BoxDecoration(
            color: ColorManager.pinkColor,
            borderRadius: BorderRadius.circular(RaduisManager.r8),
          ),
          child: Text(
            "${200.toStringAsFixed(1)}% OFF",
            style: TextStyle(
              fontSize: FontSizeManager.font12,
              fontWeight: FontWeight.bold,
              color: ColorManager.colorred,
            ),
          ),
        ),
      ],
    );
  }
}
