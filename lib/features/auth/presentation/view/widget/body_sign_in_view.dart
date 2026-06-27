import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/utils/padding_manager.dart';
import 'package:phone_zone/core/utils/styles.dart';
import 'package:phone_zone/core/utils/text_manager.dart';
import 'package:phone_zone/features/auth/presentation/view/widget/custom_button.dart';
import 'package:phone_zone/features/auth/presentation/view/widget/custom_text_button.dart';
import 'package:phone_zone/features/auth/presentation/view/widget/custom_text_feild.dart';
import 'package:phone_zone/features/auth/presentation/view/widget/title_auth_view.dart';

class BodySignInView extends StatelessWidget {
  const BodySignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: PaddingManager.p16,
        horizontal: PaddingManager.p35,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(flex: 2),
          TitleAuthView(
            textTitle1: TextManager.welcome,
            textTitle2: TextManager.back,
          ),
          Spacer(flex: 1),
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
          SizedBox(height: HeightManager.h10),
          CustomTextButton(
            onTap: () {},
            textButton: TextManager.forgetPassword,
          ),
          SizedBox(height: HeightManager.h20),
          CustomButton(textButton: TextManager.login),
          SizedBox(height: HeightManager.h40),
          Align(
            alignment: Alignment.center,
            child: Text(TextManager.orContinue, style: Styles.firaSans14),
          ),
          SizedBox(height: HeightManager.h20),
          GoogleAuthButton(
            onPressed: () {},
            style: AuthButtonStyle(
              width: double.infinity,
              height: HeightManager.h55,
            ),
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
