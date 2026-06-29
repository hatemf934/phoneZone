import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/font_size_manager.dart';
import 'package:phone_zone/core/utils/styles.dart';
import 'package:phone_zone/core/utils/text_manager.dart';

class TextPriceWidget extends StatelessWidget {
  const TextPriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '${TextManager.productCurrencySymbol}${300.toStringAsFixed(0)}',
      style: Styles.styleBlck87.copyWith(
        fontSize: FontSizeManager.font18,
        color: ColorManager.lightGreen,
      ),
    );
  }
}
