import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/font_family_manager.dart';
import 'package:phone_zone/core/utils/font_size_manager.dart';

class Styles {
  Styles._();
  static const TextStyle firaSans24 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: FontSizeManager.font24,
    fontFamily: FontFamilyManager.firaSans,
  );
  static const TextStyle firaSans14 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: FontSizeManager.font14,
    fontFamily: FontFamilyManager.firaSans,
    color: ColorManager.colorGrey,
  );
  static const TextStyle firaSans15 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: FontSizeManager.font15,
    fontFamily: FontFamilyManager.firaSans,
    color: ColorManager.colorBlack,
  );
}
