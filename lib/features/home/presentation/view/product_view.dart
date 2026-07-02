import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/route_manager.dart';
import 'package:phone_zone/features/home/data/model/phone_model.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/productView/body_product_view.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/productView/product_action_row.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key, required this.phoneModel});
  static const String id = RouteManager.productView;
  final PhoneModel phoneModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyProductView(phoneModel: phoneModel),
      bottomNavigationBar: const ProductActionRow(),
    );
  }
}
