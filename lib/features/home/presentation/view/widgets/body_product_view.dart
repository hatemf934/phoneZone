import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/utils/padding_manager.dart';
import 'package:phone_zone/features/home/data/model/phone_model.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/builder_body_product_details.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/custom_back_arrow.dart';

class BodyProductView extends StatelessWidget {
  const BodyProductView({super.key, required this.phoneModel});
  final PhoneModel phoneModel;
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
              BuilderBodyProductDetails(phoneModel: phoneModel),
            ],
          ),
        ),
      ),
    );
  }
}
