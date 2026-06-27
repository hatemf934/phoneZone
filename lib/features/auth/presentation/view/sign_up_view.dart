import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/route_manager.dart';
import 'package:phone_zone/features/auth/presentation/view/widget/body_sign_up_view.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const String id = RouteManager.signUp;
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
        child: const BodySignUpView(),
      ),
    );
  }
}
