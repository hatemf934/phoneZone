import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/utils/text_manager.dart';
import 'package:phone_zone/features/auth/presentation/view/widget/custom_text_feild.dart';

class TextFormFeildSignUpSection extends StatelessWidget {
  const TextFormFeildSignUpSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: HeightManager.h20),
        CustomTextFeild(prefixIcon: Icons.email, hintText: TextManager.email),
        SizedBox(height: HeightManager.h20),
        CustomTextFeild(
          hintText: TextManager.userName,
          prefixIcon: Icons.person_outline,
        ),
        SizedBox(height: HeightManager.h20),
        CustomTextFeild(
          hintText: TextManager.phoneNumber,
          prefixIcon: Icons.phone,
        ),
        SizedBox(height: HeightManager.h20),
        CustomTextFeild(
          prefixIcon: Icons.lock_outline,
          hintText: TextManager.passWord,
          obscureText: true,
        ),
      ],
    );
  }
}
