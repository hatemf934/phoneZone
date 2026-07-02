import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/homeView/builder_home_body_details.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/homeView/list_catogery_chip.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/homeView/promo_banner_card.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/homeView/section_header.dart';

class HomeBodyDetails extends StatelessWidget {
  const HomeBodyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: HeightManager.h20),
          const PromoBannerCard(),
          const SizedBox(height: HeightManager.h20),
          const ListCategoryChip(),
          const SizedBox(height: HeightManager.h20),
          const SectionHeader(),
          const BuilderHomeBodyDetails(),
        ],
      ),
    );
  }
}
