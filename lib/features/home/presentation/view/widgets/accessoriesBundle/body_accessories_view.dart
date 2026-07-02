import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/utils/padding_manager.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/homeView/builder_home_body_details.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/homeView/section_header.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/productView/custom_back_arrow.dart';

class BodyAccessoriesView extends StatelessWidget {
  const BodyAccessoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            ColorManager.primaryColor,
            ColorManager.colorWhite,
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
              const SizedBox(height: HeightManager.h50),
              const CustomBackArrow(),
              const SizedBox(height: HeightManager.h30),
              const SectionHeader(),
              const BuilderHomeBodyDetails(),
            ],
          ),
        ),
      ),
    );
  }
}
