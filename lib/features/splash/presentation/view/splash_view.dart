import 'dart:async';

import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/route_manager.dart';
import 'package:phone_zone/features/onboarding/presentation/view/on_boarding_view.dart';
import 'package:phone_zone/features/splash/presentation/view/widgets/custom_image_scale_animation.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static const String id = RouteManager.splashView;

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    durationNav();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              ColorManager.premaryColor,
              ColorManager.colorWhite,
              ColorManager.colorWhite,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomImageScaleAnimation(),
            CircularProgressIndicator(color: ColorManager.premaryColor),
          ],
        ),
      ),
    );
  }

  void durationNav() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnBoardingView()),
      );
    });
  }
}
