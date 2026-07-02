import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:phone_zone/features/home/data/model/phone_model.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/homeView/product_card.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key, required this.phoneModel});
  final List<PhoneModel> phoneModel;
  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: phoneModel.length,
      crossAxisCount: 2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      itemBuilder: (context, index) {
        return ProductCard(phoneModel: phoneModel[index]);
      },
    );
  }
}
