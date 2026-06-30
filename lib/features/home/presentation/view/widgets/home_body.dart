import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_zone/core/helper/custom_snakbar.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/features/home/presentation/bloc/phone_cubit/phone_cubit.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/custom_grid_view.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/list_catogery_chip.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/promo_banner_card.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/section_header.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

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
          BlocBuilder<PhoneCubit, PhoneState>(
            builder: (context, state) {
              if (state is PhoneLoading) {
                return CircularProgressIndicator(
                  color: ColorManager.primaryColor,
                );
              } else if (state is PhoneSeccess) {
                return CustomGridView(phoneModel: state.phoneList);
              } else if (state is PhoneFailure) {
                CustomSnackBar.showError(
                  context,
                  message: state.failure.userMessage,
                );
              }
              return SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }
}
