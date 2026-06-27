import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.onTap,
    required this.textButton,
  });
  final Function() onTap;
  final String textButton;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        child: GestureDetector(
          onTap: onTap,
          child: Text(
            textButton,
            style: Styles.firaSans14.copyWith(color: ColorManager.primaryColor),
          ),
        ),
      ),
    );
  }
}
