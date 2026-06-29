import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/route_manager.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/body_product_view.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/product_action_row.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});
  static const String id = RouteManager.productView;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.primaryColor,
        foregroundColor: ColorManager.colorWhite,
      ),
      body: const BodyProductView(),
      bottomNavigationBar: const ProductActionRow(),
    );
  }
}
