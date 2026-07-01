import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/font_size_manager.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/utils/padding_manager.dart';
import 'package:phone_zone/core/utils/raduis_manager.dart';
import 'package:phone_zone/core/utils/styles.dart';
import 'package:phone_zone/core/utils/text_manager.dart';
import 'package:phone_zone/core/utils/width_manager.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(PaddingManager.p20),
      decoration: BoxDecoration(
        color: ColorManager.colorGrey50,
        borderRadius: BorderRadius.circular(RaduisManager.r14),
        border: Border.all(color: ColorManager.colorGrey100, width: 1.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.shopping_bag_outlined,
                size: FontSizeManager.font20,
                color: ColorManager.primaryColor,
              ),
              SizedBox(width: WidthManager.w8),
              Text(
                TextManager.orderDetails,
                style: Styles.styleBlck87.copyWith(
                  fontSize: FontSizeManager.font15,
                ),
              ),
            ],
          ),
          const Divider(height: HeightManager.h30, thickness: 1),
          buildDetailRow(
            TextManager.quantitySelected,
            "${2}${TextManager.items}",
          ),
          const SizedBox(height: HeightManager.h8),
          buildDetailRow(
            TextManager.originalTotal,
            "\$${44.34.toStringAsFixed(2)}",
          ),
          const SizedBox(height: HeightManager.h8),
          buildDetailRow(
            TextManager.discountedTotal,
            "\$${23.43.toStringAsFixed(2)}",
            valueColor: ColorManager.colorGreen,
            valueBold: true,
          ),
        ],
      ),
    );
  }

  Widget buildDetailRow(
    String label,
    String value, {
    Color? valueColor,
    bool valueBold = false,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: FontSizeManager.font14,
            color: ColorManager.badgeText,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: FontSizeManager.font14,
            fontWeight: valueBold ? FontWeight.bold : FontWeight.w600,
            color: valueColor ?? ColorManager.badgeBackground,
          ),
        ),
      ],
    );
  }
}
