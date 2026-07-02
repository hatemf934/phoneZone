import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/raduis_manager.dart';
import 'package:phone_zone/core/widgets/custom_cached_image.dart';
import 'package:phone_zone/features/home/data/model/phone_model.dart';
import 'package:phone_zone/features/home/presentation/bloc/phone_details/phone_details_cubit.dart';
import 'package:phone_zone/features/home/presentation/view/product_view.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/homeView/info_section_card.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.phoneModel});
  final PhoneModel phoneModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PhoneDetailsCubit>().getPhoneByid(phoneModel.idProduct);
        Navigator.pushNamed(context, ProductView.id, arguments: phoneModel);
      },
      child: Container(
        decoration: BoxDecoration(
          color: ColorManager.colorWhite,
          borderRadius: BorderRadius.circular(RaduisManager.r10),
          boxShadow: [
            BoxShadow(
              color: ColorManager.colorBlack87.withAlpha(35),
              blurRadius: 8,
              offset: Offset.zero,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomCachedImage(imageUrl: phoneModel.image),
            InfoSection(phoneModel: phoneModel),
          ],
        ),
      ),
    );
  }
}
