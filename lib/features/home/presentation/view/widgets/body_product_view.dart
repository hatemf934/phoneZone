import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/utils/padding_manager.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/row_ratimg_product_view.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/text_price_widget.dart';

class BodyProductView extends StatelessWidget {
  const BodyProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            ColorManager.primaryColor,
            ColorManager.colorWhite,
            ColorManager.colorWhite,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(PaddingManager.p16),
        child: Column(
          children: [
            Image.network(
              "https://cdn.dummyjson.com/product-images/smartphones/iphone-5s/thumbnail.webp",
            ),
            const SizedBox(height: HeightManager.h10),
            const RowRatingProductView(),
            const SizedBox(height: HeightManager.h10),
            const Align(
              alignment: Alignment.centerLeft,
              child: TextPriceWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
