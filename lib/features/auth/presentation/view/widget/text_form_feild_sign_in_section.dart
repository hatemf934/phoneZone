import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_zone/core/helper/form_validate.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/utils/text_manager.dart';
import 'package:phone_zone/core/utils/text_validate_manager.dart';
import 'package:phone_zone/features/auth/presentation/bloc/user_cubit/user_cubit.dart';
import 'package:phone_zone/features/auth/presentation/view/widget/custom_text_feild.dart';

class TextFormFeildSignInSection extends StatelessWidget {
  const TextFormFeildSignInSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFeild(
          controller: context.read<UserCubit>().usernameSignIn,
          hintText: TextManager.userName,
          prefixIcon: Icons.person_rounded,
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return TextValidateManager.usernameIsRequired;
            }
            return null;
          },
        ),
        SizedBox(height: HeightManager.h20),
        CustomTextFeild(
          controller: context.read<UserCubit>().passwordSignIn,
          prefixIcon: Icons.lock_rounded,
          hintText: TextManager.passWord,
          validator: (value) => FormValidate().validatePassword(value),
          obscureText: true,
        ),
      ],
    );
  }
}
