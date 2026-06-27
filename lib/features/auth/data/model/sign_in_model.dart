import 'package:phone_zone/core/api/end_point.dart';

class SignInModel {
  final String username;
  final String password;

  SignInModel({required this.username, required this.password});
  factory SignInModel.fromJson(Map<String, dynamic> json) {
    return SignInModel(
      username: json[ApiKey.username],
      password: json[ApiKey.password],
    );
  }
}
