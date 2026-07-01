import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';

class ErrorCachedImage extends StatelessWidget {
  const ErrorCachedImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: ColorManager.shimmerBase,
      child: const Icon(Icons.broken_image, color: ColorManager.colorGrey),
    );
  }
}
