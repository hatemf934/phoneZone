import 'package:phone_zone/core/api/end_point.dart';

class PhoneModel {
  final String image;
  final String title;
  final String desc;
  final double price;
  final double rating;
  final String brand;
  final double discountPercentage;
  final DimensionsPhoneModel dimension;
  final int idProduct;

  PhoneModel({
    required this.image,
    required this.title,
    required this.desc,
    required this.price,
    required this.rating,
    required this.idProduct,
    required this.brand,
    required this.discountPercentage,
    required this.dimension,
  });
  factory PhoneModel.fromJson(Map<String, dynamic> json) {
    return PhoneModel(
      image: json[ApiKey.thumbnail],
      title: json[ApiKey.title],
      desc: json[ApiKey.description],
      price: json[ApiKey.price].toDouble(),
      rating: json[ApiKey.rating].toDouble(),
      idProduct: json[ApiKey.idProduct],
      brand: json[ApiKey.brand],
      discountPercentage: json[ApiKey.discountPercentage].toDouble(),
      dimension: DimensionsPhoneModel.fromJson(json[ApiKey.dimensions]),
    );
  }
}

class DimensionsPhoneModel {
  final double width;
  final double height;
  final double depth;

  DimensionsPhoneModel({
    required this.width,
    required this.height,
    required this.depth,
  });

  factory DimensionsPhoneModel.fromJson(Map<String, dynamic> json) {
    return DimensionsPhoneModel(
      width: json[ApiKey.width].toDouble(),
      height: json[ApiKey.height].toDouble(),
      depth: json[ApiKey.depth].toDouble(),
    );
  }
}
