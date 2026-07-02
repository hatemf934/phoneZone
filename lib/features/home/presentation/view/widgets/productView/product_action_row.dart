import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/padding_manager.dart';
import 'package:phone_zone/core/utils/width_manager.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/productView/add_to_cart_button.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/productView/wishListButton.dart';

class ProductActionRow extends StatelessWidget {
  const ProductActionRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.colorWhite,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: PaddingManager.p8,
          vertical: PaddingManager.p20,
        ),
        child: Row(
          children: [
            WishlistButton(),
            const SizedBox(width: WidthManager.w10),
            Expanded(child: AddToCartButton()),
          ],
        ),
      ),
    );
  }
}
