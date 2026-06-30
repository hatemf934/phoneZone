import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_zone/core/api/dio_class.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/height_manager.dart';
import 'package:phone_zone/core/utils/padding_manager.dart';
import 'package:phone_zone/core/utils/route_manager.dart';
import 'package:phone_zone/features/home/data/repos/phone_repo_implement.dart';
import 'package:phone_zone/features/home/presentation/bloc/phone_cubit/phone_cubit.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/home_body.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/shop_top_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String id = RouteManager.homeView;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          PhoneCubit(PhoneRepoImplement(dioclass: DioClass(dio: Dio())))
            ..getPhones(),
      child: Scaffold(
        body: Container(
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
            child: Column(
              children: [
                const SizedBox(height: HeightManager.h55),
                ShopTopBar(
                  cartItemCount: 3,
                  hasUnreadNotification: true,
                  onCartTap: () {},
                  onNotificationTap: () {},
                ),
                Expanded(child: HomeBody()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
