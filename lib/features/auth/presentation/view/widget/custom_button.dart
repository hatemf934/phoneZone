import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/utils/raduis_manager.dart';
import 'package:phone_zone/core/utils/styles.dart';
import 'package:phone_zone/core/utils/width_manager.dart';
import 'package:phone_zone/features/auth/presentation/bloc/user_cubit/user_cubit.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.textButton,
    required this.onPressed,
  });
  final String textButton;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorManager.primaryColor,
        foregroundColor: ColorManager.colorWhite,
        minimumSize: Size(double.infinity, HeightManager.h55),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(RaduisManager.r10),
        ),
        elevation: 2,
      ),
      child: BlocBuilder<UserCubit, UserState>(
        builder: (context, state) {
          if (state is SignInLoading || state is SignUpLoading) {
            return SizedBox(
              width: WidthManager.w30,
              height: HeightManager.h30,
              child: CircularProgressIndicator(color: ColorManager.colorWhite),
            );
          }
          return Text(textButton, style: Styles.firaSans18);
        },
      ),
    );
  }
}
