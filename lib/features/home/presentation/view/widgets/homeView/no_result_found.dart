import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/font_size_manager.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/utils/padding_manager.dart';
import 'package:phone_zone/core/utils/styles.dart';
import 'package:phone_zone/core/utils/text_manager.dart';

class NoResultFound extends StatelessWidget {
  const NoResultFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(PaddingManager.p20),
          decoration: BoxDecoration(
            color: ColorManager.primaryColor.withAlpha(20),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.search_off_rounded,
            size: FontSizeManager.font65,
            color: ColorManager.primaryColor.withAlpha(179),
          ),
        ),
        const SizedBox(height: HeightManager.h20),
        Text(
          TextManager.noResult,
          style: Styles.styleBlck87.copyWith(fontSize: FontSizeManager.font18),
        ),
      ],
    );
  }
}
