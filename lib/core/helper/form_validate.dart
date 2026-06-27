import 'package:phone_zone/core/utils/text_manager.dart';
import 'package:phone_zone/core/utils/text_validate_manager.dart';

class FormValidate {
  final RegExp passwordLeastLowerCaseLetter = RegExp(
    TextValidateManager.passwordLeastLowerCaseLetter,
  );
  final RegExp emailRegExp = RegExp(TextValidateManager.emailRegExp);
  final RegExp fullNameRegExp = RegExp(TextValidateManager.fullNameRegExp);
  final RegExp passwordLeastDigit = RegExp(
    TextValidateManager.passwordLeastDigit,
  );
  final RegExp passwordLeastOneCharacter = RegExp(
    TextValidateManager.passwordLeastOneCharacter,
  );
  final RegExp passwordLeastEightNumber = RegExp(
    TextValidateManager.passwordLeastEightNumber,
  );
  final RegExp phoneRegExp = RegExp(TextValidateManager.phoneFormat);

  String? validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return TextManager.invalidEmailOrPassword;
    }
    if (!emailRegExp.hasMatch(value.trim())) {
      return TextManager.invalidEmailOrPassword;
    }
    return null;
  }

  String? validateFullName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return TextManager.invalidFullName;
    }
    if (!fullNameRegExp.hasMatch(value.trim())) {
      return TextManager.invalidFullName;
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.trim().isEmpty) {
      return TextManager.invalidEmailOrPassword;
    }
    if (!passwordLeastLowerCaseLetter.hasMatch(value)) {
      return TextManager.passwordFromAtoZ;
    }
    if (!passwordLeastOneCharacter.hasMatch(value)) {
      return TextManager.passwordSpicailCharacter;
    }
    if (!passwordLeastDigit.hasMatch(value)) {
      return TextManager.passwordLeastNumber;
    }
    if (!passwordLeastEightNumber.hasMatch(value)) {
      return TextManager.passwordLeastAt8Number;
    }
    return null;
  }

  String? validateConfirmPassword(String? value, String originalPassword) {
    if (value == null || value.trim().isEmpty) {
      return TextManager.invalidEmailOrPassword;
    }
    if (value != originalPassword) {
      return TextManager.passwordsNotMatch;
    }
    return null;
  }

  String? validatePhone(String? value) {
    if (value == null || value.trim().isEmpty) {
      return TextManager.requiredPhone;
    }
    final trimmedValue = value.trim();
    if (!phoneRegExp.hasMatch(trimmedValue)) {
      return TextManager.invalidPhoneFormat;
    }
    if (trimmedValue.length < 11) {
      return TextManager.phoneTooShort;
    }
    return null;
  }

  String? validateEnterNumber(String? value) {
    if (value == null || value.isEmpty) {
      return TextManager.fieldIsRequired;
    }
    if (double.tryParse(value) == null) {
      return TextManager.pleaseEnterNumber;
    }
    return null;
  }
}
