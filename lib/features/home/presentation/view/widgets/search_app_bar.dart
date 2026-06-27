import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/font_size_manager.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/utils/padding_manager.dart';
import 'package:phone_zone/core/utils/raduis_manager.dart';
import 'package:phone_zone/core/utils/styles.dart';
import 'package:phone_zone/core/utils/text_manager.dart';

class SearchAppBar extends StatelessWidget {
  final ValueChanged<String>? onChanged;

  const SearchAppBar({super.key, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: HeightManager.h45,
      decoration: BoxDecoration(
        color: ColorManager.colorWhite,
        borderRadius: BorderRadius.circular(RaduisManager.r25),
      ),
      child: TextField(
        onChanged: onChanged,
        style: Styles.firaSans14.copyWith(color: ColorManager.colorBlack87),
        decoration: InputDecoration(
          hintText: TextManager.searchHint,
          hintStyle: Styles.firaSans14,
          prefixIcon: Icon(
            Icons.search,
            size: FontSizeManager.font24,
            color: Colors.grey.shade400,
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            vertical: PaddingManager.p13,
          ),
        ),
      ),
    );
  }
}
