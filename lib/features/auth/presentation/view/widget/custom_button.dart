import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/utils/raduis_manager.dart';
import 'package:phone_zone/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.textButton});
  final String textButton;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorManager.primaryColor,
        foregroundColor: ColorManager.colorWhite,
        minimumSize: Size(double.infinity, HeightManager.h55),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(RaduisManager.r10),
        ),
        elevation: 2,
      ),
      child: Text(textButton, style: Styles.firaSans18),
    );
  }
}
