import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';

class ErrorCachedImage extends StatelessWidget {
  const ErrorCachedImage({super.key, required this.imageHeight});
  final double imageHeight;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: imageHeight,
      decoration: BoxDecoration(
        color: ColorManager.colorGrey300,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Icon(Icons.broken_image, color: ColorManager.colorGrey),
    );
  }
}
