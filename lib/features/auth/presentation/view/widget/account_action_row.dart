import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/styles.dart';
import 'package:phone_zone/core/utils/width_manager.dart';

class AccountActionRow extends StatelessWidget {
  const AccountActionRow({
    super.key,
    required this.onTap,
    required this.labelText,
    required this.actionText,
  });
  final Function() onTap;
  final String labelText;
  final String actionText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(labelText, style: Styles.firaSans14),
        SizedBox(width: WidthManager.w8),
        GestureDetector(
          onTap: onTap,
          child: Text(
            actionText,
            style: Styles.firaSans14.copyWith(
              color: ColorManager.primaryColor,
              decoration: TextDecoration.underline,
              decorationColor: ColorManager.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
