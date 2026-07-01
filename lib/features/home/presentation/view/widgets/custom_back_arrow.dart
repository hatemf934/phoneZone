import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/font_size_manager.dart';
import 'package:phone_zone/core/utils/padding_manager.dart';

class CustomBackArrow extends StatelessWidget {
  const CustomBackArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            padding: const EdgeInsets.all(PaddingManager.p8),
            decoration: BoxDecoration(
              color: ColorManager.colorBlack87.withAlpha(50),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.arrow_back,
              color: ColorManager.colorWhite,
              size: FontSizeManager.font24,
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
