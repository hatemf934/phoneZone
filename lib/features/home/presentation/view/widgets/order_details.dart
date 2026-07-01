import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/font_size_manager.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/utils/padding_manager.dart';
import 'package:phone_zone/core/utils/raduis_manager.dart';
import 'package:phone_zone/core/utils/styles.dart';
import 'package:phone_zone/core/utils/text_manager.dart';
import 'package:phone_zone/core/utils/width_manager.dart';
import 'package:phone_zone/features/home/data/model/phone_model.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key, required this.phoneModel});
  final PhoneModel phoneModel;
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
            TextManager.width,
            "${phoneModel.dimension.width} ${TextManager.cmText}",
          ),
          const SizedBox(height: HeightManager.h8),
          buildDetailRow(
            TextManager.height,
            "${phoneModel.dimension.height} ${TextManager.cmText}",
          ),
          const SizedBox(height: HeightManager.h8),
          buildDetailRow(
            TextManager.depth,
            "${phoneModel.dimension.depth} ${TextManager.cmText}",
          ),
        ],
      ),
    );
  }

  Widget buildDetailRow(String label, String value) {
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
            fontWeight: FontWeight.bold,
            color: ColorManager.badgeBackground,
          ),
        ),
      ],
    );
  }
}
