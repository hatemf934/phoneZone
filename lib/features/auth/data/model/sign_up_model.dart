import 'package:phone_zone/core/api/end_point.dart';

class SignUpModel {
  final String username;
  final String email;
  final String password;
  final String phone;

  SignUpModel({
    required this.username,
    required this.email,
    required this.password,
    required this.phone,
  });

  factory SignUpModel.fromJson(Map<String, dynamic> json) {
    return SignUpModel(
      username: json[ApiKey.username],
      email: json[ApiKey.email],
      password: json[ApiKey.password],
      phone: json[ApiKey.phone],
    );
  }
}
