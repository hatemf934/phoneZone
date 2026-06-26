import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/utils/padding_manager.dart';
import 'package:phone_zone/core/utils/styles.dart';

PageViewModel buildPageView({
  required String imageTitle,
  required String title,
  required String subTitle,
}) {
  return PageViewModel(
    useScrollView: false,
    titleWidget: SizedBox(height: HeightManager.h150),
    bodyWidget: LayoutBuilder(
      builder: (context, constraints) {
        final screenHeight = MediaQuery.of(context).size.height;
        final screenWidth = MediaQuery.of(context).size.width;
        return Column(
          children: [
            Image.asset(
              imageTitle,
              height: screenHeight * 0.35,
              width: screenWidth * 0.85,
              fit: BoxFit.contain,
            ),
            Text(title, style: Styles.firaSans24),
            SizedBox(height: HeightManager.h20),
            Padding(
              padding: const EdgeInsets.all(PaddingManager.p8),
              child: Text(
                textAlign: TextAlign.center,
                subTitle,
                style: Styles.firaSans14,
              ),
            ),
          ],
        );
      },
    ),
  );
}
