import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/raduis_manager.dart';
import 'package:phone_zone/core/widgets/custom_cached_image.dart';
import 'package:phone_zone/features/home/data/model/phone_model.dart';
import 'package:phone_zone/features/home/presentation/view/product_view.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/info_section_card.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.phoneModel});
  final PhoneModel phoneModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, ProductView.id),
      child: Container(
        decoration: BoxDecoration(
          color: ColorManager.colorWhite,
          borderRadius: BorderRadius.circular(RaduisManager.r10),
          boxShadow: [
            BoxShadow(
              color: ColorManager.colorBlack87.withAlpha(35),
              blurRadius: 8,
              offset: Offset.zero,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomCachedImage(imageUrl: phoneModel.image),
            InfoSection(phoneModel: phoneModel),
          ],
        ),
      ),
    );
  }
}
//  "https://cdn.dummyjson.com/product-images/smartphones/iphone-5s/thumbnail.webp",