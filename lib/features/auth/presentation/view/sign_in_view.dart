import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/utils/padding_manager.dart';
import 'package:phone_zone/core/utils/route_manager.dart';
import 'package:phone_zone/core/utils/text_manager.dart';
import 'package:phone_zone/features/auth/presentation/view/widget/custom_text_feild.dart';
import 'package:phone_zone/features/auth/presentation/view/widget/title_auth_view.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});
  static const String id = RouteManager.signIn;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: PaddingManager.p16,
            horizontal: PaddingManager.p35,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TitleAuthView(
                textTitle1: TextManager.welcome,
                textTitle2: TextManager.back,
              ),
              SizedBox(height: HeightManager.h20),
              CustomTextFeild(
                hintText: TextManager.userName,
                iconData: Icons.abc_outlined,
                prefixIcon: Icons.person_outline,
              ),
              SizedBox(height: HeightManager.h20),
              CustomTextFeild(
                prefixIcon: Icons.lock_outline,
                hintText: TextManager.passWord,
                iconData: Icons.abc_outlined,
                obscureText: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
