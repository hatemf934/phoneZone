import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_zone/core/api/end_point.dart';
import 'package:phone_zone/core/helper/server_locator.dart';
import 'package:phone_zone/core/utils/route_manager.dart';
import 'package:phone_zone/features/home/data/repos/phone_repo_implement.dart';
import 'package:phone_zone/features/home/presentation/bloc/phone_cubit/phone_cubit.dart';
import 'package:phone_zone/features/home/presentation/view/widgets/accessoriesBundle/body_accessories_view.dart';

class AccessoriesBundleView extends StatelessWidget {
  const AccessoriesBundleView({super.key});
  static const String id = RouteManager.accessoriesBundle;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PhoneCubit(getIt<PhoneRepoImplement>())
        ..getPhones(
          baseUrl:
              "${EndPointClass.productbaseUrl}${EndPointClass.product}${EndPointClass.mobileAccessories}",
        ),
      child: Scaffold(body: BodyAccessoriesView()),
    );
  }
}
