import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/utils/padding_manager.dart';
import 'package:phone_zone/core/utils/route_manager.dart';
import 'package:phone_zone/core/utils/text_manager.dart';
import 'package:phone_zone/features/auth/presentation/bloc/user_cubit/user_cubit.dart';
import 'package:phone_zone/features/auth/presentation/view/widget/account_action_row.dart';
import 'package:phone_zone/features/auth/presentation/view/widget/custom_button.dart';
import 'package:phone_zone/features/auth/presentation/view/widget/or_continue_google_section.dart';
import 'package:phone_zone/features/auth/presentation/view/widget/text_form_feild_sign_up_section.dart';
import 'package:phone_zone/features/auth/presentation/view/widget/title_auth_view.dart';

class BodySignUpView extends StatelessWidget {
  const BodySignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = context.read<UserCubit>().formSignUpKey;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: PaddingManager.p16,
          horizontal: PaddingManager.p35,
        ),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: HeightManager.h20),
                const TitleAuthView(
                  textTitle1: TextManager.createAn,
                  textTitle2: TextManager.account,
                ),
                const SizedBox(height: HeightManager.h20),
                const TextFormFeildSignUpSection(),
                const SizedBox(height: HeightManager.h20),
                CustomButton(
                  textButton: TextManager.createAccount,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
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
                    RouteManager.signIn,
                  ),
                  labelText: TextManager.alreadyHaveAccount,
                  actionText: TextManager.login,
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
