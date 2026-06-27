import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/padding_manager.dart';
import 'package:phone_zone/core/utils/raduis_manager.dart';
import 'package:phone_zone/core/utils/route_manager.dart';
import 'package:phone_zone/core/utils/styles.dart';
import 'package:phone_zone/core/utils/text_manager.dart';
import 'package:phone_zone/core/utils/width_manager.dart';
import 'package:phone_zone/features/auth/presentation/view/sign_in_view.dart';
import 'package:phone_zone/features/onboarding/presentation/view/widget/list_of_page_view.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static const String id = RouteManager.onBoarding;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            ColorManager.primaryColor,
            ColorManager.colorWhite,
            ColorManager.colorWhite,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: IntroductionScreen(
        globalBackgroundColor: Colors.transparent,
        pages: pageViewModel,
        dotsDecorator: DotsDecorator(
          size: Size.fromRadius(RaduisManager.r4),
          activeSize: Size(WidthManager.w30, WidthManager.w8),
          activeColor: ColorManager.primaryColor,
          color: ColorManager.colorGrey,
          spacing: EdgeInsets.symmetric(horizontal: PaddingManager.p3),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(RaduisManager.r25),
          ),
        ),
        onDone: () => Navigator.pushReplacementNamed(context, SignInView.id),
        dotsFlex: 4,
        showBackButton: true,
        showSkipButton: true,
        skip: Text(
          TextManager.skipText,
          style: Styles.firaSans15.copyWith(
            color: ColorManager.primaryColor,
            decoration: TextDecoration.underline,
            decorationColor: ColorManager.primaryColor,
            decorationThickness: 1.5,
          ),
        ),
        back: Text(TextManager.backText, style: Styles.firaSans15),
        next: Text(TextManager.nextText, style: Styles.firaSans15),
        done: Text(
          TextManager.donetext,
          style: Styles.firaSans15.copyWith(color: ColorManager.primaryColor),
        ),
      ),
    );
  }
}
