import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/font_size_manager.dart';
import 'package:phone_zone/core/utils/styles.dart';
import 'package:phone_zone/core/utils/text_manager.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/sort_button.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          TextManager.sectionAllFeatured,
          style: Styles.styleBlck87.copyWith(fontSize: FontSizeManager.font16),
        ),
        SortButton(),
      ],
    );
  }
}
