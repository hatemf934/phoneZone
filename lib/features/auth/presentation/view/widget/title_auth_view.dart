import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/font_size_manager.dart';
import 'package:phone_zone/core/utils/styles.dart';

class TitleAuthView extends StatelessWidget {
  const TitleAuthView({
    super.key,
    required this.textTitle1,
    required this.textTitle2,
  });
  final String textTitle1;
  final String textTitle2;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textTitle1,
          style: Styles.firaSansbold.copyWith(fontSize: FontSizeManager.font34),
        ),
        Text(
          textTitle2,
          style: Styles.firaSansbold.copyWith(fontSize: FontSizeManager.font34),
        ),
      ],
    );
  }
}
