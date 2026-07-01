import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/widgets/error_cached_image.dart';
import 'package:shimmer/shimmer.dart';

class CustomCachedImage extends StatelessWidget {
  const CustomCachedImage({
    super.key,
    required this.imageUrl,
    this.heightImage,
  });

  final String? imageUrl;
  final double? heightImage;

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null) {
      return const ErrorCachedImage();
    }
    return ClipRRect(
      child: CachedNetworkImage(
        imageUrl: imageUrl!,
        width: double.infinity,
        height: heightImage,
        fit: BoxFit.fitHeight,
        placeholder: (context, url) => Shimmer.fromColors(
          baseColor: ColorManager.colorGrey300,
          highlightColor: ColorManager.colorGrey100,
          child: Container(color: ColorManager.colorGrey300, height: 185),
        ),
        errorWidget: (context, url, error) => const ErrorCachedImage(),
      ),
    );
  }
}
