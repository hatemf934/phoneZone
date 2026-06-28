import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/raduis_manager.dart';
import 'package:phone_zone/core/utils/text_manager.dart';
import 'package:phone_zone/core/utils/width_manager.dart';

class CustomSnackBar {
  static void showSuccess(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Icons.check_circle, color: ColorManager.colorWhite),
            const SizedBox(width: WidthManager.w8),
            Expanded(child: Text(TextManager.accountSuccess)),
          ],
        ),
        backgroundColor: ColorManager.primaryColor,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(RaduisManager.r10),
        ),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  static void showError(BuildContext context, {required String message}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Icons.error_outline, color: ColorManager.colorWhite),
            const SizedBox(width: WidthManager.w8),
            Expanded(child: Text(message)),
          ],
        ),
        backgroundColor: Colors.redAccent,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(RaduisManager.r10),
        ),
        duration: const Duration(seconds: 3),
      ),
    );
  }
}
