import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/utils/styles.dart';
import 'package:phone_zone/core/utils/text_manager.dart';

class OrContinueGoogleSection extends StatelessWidget {
  const OrContinueGoogleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
      ],
    );
  }
}
