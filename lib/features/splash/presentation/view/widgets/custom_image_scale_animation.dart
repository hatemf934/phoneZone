import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/assets_manager.dart';
import 'package:phone_zone/core/utils/width_manager.dart';

class CustomImageScaleAnimation extends StatelessWidget {
  const CustomImageScaleAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0.0, end: 1.0),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
      builder: (context, scale, child) {
        return Transform.scale(scale: scale, child: child);
      },
      child: Image.asset(AssetsManager.logoSplashApp, width: WidthManager.w280),
    );
  }
}
