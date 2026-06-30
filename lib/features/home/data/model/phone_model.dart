import 'package:phone_zone/core/api/end_point.dart';

class PhoneModel {
  final String image;
  final String title;
  final String desc;
  final double price;
  final double rating;

  PhoneModel({
    required this.image,
    required this.title,
    required this.desc,
    required this.price,
    required this.rating,
  });
  factory PhoneModel.fromJson(Map<String, dynamic> json) {
    return PhoneModel(
      image: json[ApiKey.thumbnail],
      title: json[ApiKey.title],
      desc: json[ApiKey.description],
      price: json[ApiKey.price].toDouble(),
      rating: json[ApiKey.rating].toDouble(),
    );
  }
}
