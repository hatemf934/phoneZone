import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/utils/padding_manager.dart';
import 'package:phone_zone/core/utils/styles.dart';
import 'package:phone_zone/core/widgets/custom_cached_image.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/custom_back_arrow.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/order_details.dart';
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: HeightManager.h30),
              const CustomBackArrow(),
              CustomCachedImage(
                heightImage: HeightManager.h300,
                imageUrl:
                    "https://cdn.dummyjson.com/product-images/smartphones/iphone-5s/thumbnail.webp",
                hasColor: false,
              ),
              const SizedBox(height: HeightManager.h10),
              const RowRatingProductView(),
              const SizedBox(height: HeightManager.h10),
              const RowTextPriceWidget(),
              const SizedBox(height: HeightManager.h10),
              Text(
                "A beautiful blue frock designed for summer comfort. Made from 100% premium breathable cotton, this elegant dress features a light floral print and a comfortable elastic waist. Perfect for casual outings, family gatherings, and daytime events.",
                style: Styles.firaSans15.copyWith(
                  color: ColorManager.colorGrey600,
                  height: 1.6,
                ),
              ),
              const SizedBox(height: HeightManager.h10),
              const OrderDetails(),
            ],
          ),
        ),
      ),
    );
  }
}
