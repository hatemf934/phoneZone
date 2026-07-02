import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_zone/core/helper/server_locator.dart';
import 'package:phone_zone/core/utils/route_manager.dart';
import 'package:phone_zone/features/home/data/repos/phone_repo_implement.dart';
import 'package:phone_zone/features/home/presentation/bloc/phone_cubit/phone_cubit.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/homeView/body_home_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String id = RouteManager.homeView;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PhoneCubit(getIt<PhoneRepoImplement>())..getPhones(),
      child: Scaffold(body: const BodyHomeView()),
    );
  }
}
