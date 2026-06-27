import 'package:flutter/material.dart';
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
        SizedBox(height: 30),
        Text(textTitle1, style: Styles.firaSans24),
        Text(textTitle2, style: Styles.firaSans24),
      ],
    );
  }
}
