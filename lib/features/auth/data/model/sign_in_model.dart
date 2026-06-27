import 'package:phone_zone/core/api/end_point.dart';

class SignInModel {
  final String accessToken;
  final String refreshToken;

  SignInModel({required this.accessToken, required this.refreshToken});
  factory SignInModel.fromJson(Map<String, dynamic> json) {
    return SignInModel(
      accessToken: json[ApiKey.accessToken],
      refreshToken: json[ApiKey.refreshToken],
    );
  }
}
