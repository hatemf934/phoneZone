import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/utils/padding_manager.dart';
import 'package:phone_zone/core/utils/route_manager.dart';
import 'package:phone_zone/core/utils/text_manager.dart';
import 'package:phone_zone/features/auth/presentation/bloc/user_cubit/user_cubit.dart';
import 'package:phone_zone/features/auth/presentation/view/widget/account_action_row.dart';
import 'package:phone_zone/features/auth/presentation/view/widget/custom_button.dart';
import 'package:phone_zone/features/auth/presentation/view/widget/custom_text_button.dart';
import 'package:phone_zone/features/auth/presentation/view/widget/or_continue_google_section.dart';
import 'package:phone_zone/features/auth/presentation/view/widget/text_form_feild_sign_in_section.dart';
import 'package:phone_zone/features/auth/presentation/view/widget/title_auth_view.dart';

class BodySignInView extends StatelessWidget {
  const BodySignInView({super.key});

  @override
  Widget build(BuildContext context) {
    final formkey = context.read<UserCubit>().formSignInKey;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: PaddingManager.p16,
          horizontal: PaddingManager.p35,
        ),
        child: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: HeightManager.h55),
                const TitleAuthView(
                  textTitle1: TextManager.welcome,
                  textTitle2: TextManager.back,
                ),
                const SizedBox(height: HeightManager.h40),
                const TextFormFeildSignInSection(),
                const SizedBox(height: HeightManager.h10),
                CustomTextButton(
                  onTap: () {},
                  textButton: TextManager.forgetPassword,
                ),
                const SizedBox(height: HeightManager.h10),
                CustomButton(
                  textButton: TextManager.login,
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.pushReplacementNamed(
                        context,
                        RouteManager.homeView,
                      );
                    }
                  },
                ),
                const SizedBox(height: HeightManager.h20),
                const OrContinueGoogleSection(),
                const SizedBox(height: HeightManager.h20),
                AccountActionRow(
                  onTap: () => Navigator.pushReplacementNamed(
                    context,
                    RouteManager.signUp,
                  ),
                  labelText: TextManager.createAccount,
                  actionText: TextManager.signUp,
                ),
                const SizedBox(height: HeightManager.h40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
