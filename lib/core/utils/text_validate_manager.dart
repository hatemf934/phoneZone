class TextValidateManager {
  TextValidateManager._();
  static const String emailRegExp = r'^[a-zA-Z0-9._%+-]+@gmail\.com$';
  static const String passwordLeastLowerCaseLetter = r'(?=.*[a-z])';
  static const String passwordLeastDigit = r'(?=.*\d)';
  static const String passwordLeastOneCharacter = r'(?=.*[@$!%*?&])';
  static const String passwordLeastEightNumber = r'.{8,}';
  static const String phoneFormat = r'^\d+$';
  static const String fullNameRegExp =
      r'^([a-zA-Z\u0600-\u06FF]{2,}\s){2,}[a-zA-Z\u0600-\u06FF]{2,}$';

  static const String fieldIsRequired = "This field is required";
  static const String usernameIsRequired = "Username is required";
  static const String emailIsRequired = 'Please enter your email';
  static const String passwordIsRequired = 'Please enter your password';
  static const String invalidEmailOrPassword = "Invalid email or password";
  static const String passwordFromAtoZ =
      "At least one lowercase letter required";
  static const String passwordSpicailCharacter =
      "At least one special character required";
  static const String passwordLeastNumber = "At least one number required";
  static const String passwordLeastAt8Number = "Minimum 8 characters required";
  static const String phoneTooShort = "Phone number is too short";
  static const String invalidPhoneFormat = "Please enter numbers only";
  static const String requiredPhone = "Please enter your phone number";
  static const String invalidFullName = "Full name must be 3 words";
  static const String passwordsNotMatch = "Passwords do not match";
  static const String pleaseEnterNumber = "Please enter a valid number only";
  static const String invalidEmailFormat = 'Ex:  example@gmail.com';
  static const String formatGmail = '@gmail.com';
}
