import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/raduis_manager.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/info_section_card.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
            ClipRRect(
              child: Image.network(
                "https://cdn.dummyjson.com/product-images/smartphones/iphone-5s/thumbnail.webp",
              ),
            ),
            InfoSection(),
          ],
        ),
      ),
    );
  }
}
