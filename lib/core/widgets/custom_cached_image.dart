import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/font_size_manager.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/widgets/error_cached_image.dart';
import 'package:shimmer/shimmer.dart';

class CustomCachedImage extends StatelessWidget {
  const CustomCachedImage({
    super.key,
    required this.imageUrl,
    this.heightImage,
    this.hasColor = true,
  });

  final String? imageUrl;
  final double? heightImage;
  final bool hasColor;

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null) {
      return hasColor
          ? ErrorCachedImage(imageHeight: heightImage ?? HeightManager.h185)
          : SizedBox(
              width: double.infinity,
              height: heightImage,
              child: const Icon(
                Icons.broken_image,
                color: ColorManager.colorGrey,
                size: FontSizeManager.font65,
              ),
            );
    }
    return ClipRRect(
      child: CachedNetworkImage(
        imageUrl: imageUrl!,
        width: double.infinity,
        height: heightImage,
        fit: BoxFit.fitHeight,
        placeholder: (context, url) => Shimmer.fromColors(
          baseColor: ColorManager.baseColor,
          highlightColor: ColorManager.highlightColor,
          child: Container(
            color: ColorManager.colorGrey300,
            height: heightImage ?? HeightManager.h185,
          ),
        ),
        errorWidget: (context, url, error) => hasColor
            ? ErrorCachedImage(imageHeight: heightImage ?? HeightManager.h185)
            : SizedBox(
                width: double.infinity,
                height: heightImage,
                child: const Icon(
                  Icons.broken_image,
                  color: ColorManager.colorGrey,
                  size: FontSizeManager.font65,
                ),
              ),
      ),
    );
  }
}
