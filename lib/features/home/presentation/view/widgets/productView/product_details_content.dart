import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/utils/styles.dart';
import 'package:phone_zone/core/widgets/custom_cached_image.dart';
import 'package:phone_zone/features/home/data/model/phone_model.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/productView/order_details.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/productView/row_ratimg_product_view.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/productView/text_price_widget.dart';

class ProductDetailsContent extends StatelessWidget {
  const ProductDetailsContent({super.key, required this.phoneModel});
  final PhoneModel phoneModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCachedImage(
          heightImage: HeightManager.h300,
          imageUrl: phoneModel.image,
          hasColor: false,
        ),
        const SizedBox(height: HeightManager.h10),
        RatingProductView(phoneModel: phoneModel),
        const SizedBox(height: HeightManager.h10),
        RowTextPriceWidget(phoneModel: phoneModel),
        const SizedBox(height: HeightManager.h10),
        Text(
          phoneModel.desc,
          style: Styles.firaSans15.copyWith(
            color: ColorManager.colorGrey600,
            height: 1.6,
          ),
        ),
        const SizedBox(height: HeightManager.h10),
        OrderDetails(phoneModel: phoneModel),
      ],
    );
  }
}
