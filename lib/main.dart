import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:phone_zone/core/api/dio_class.dart';
import 'package:phone_zone/core/helper/cache_helper.dart';
import 'package:phone_zone/core/helper/on_generate.dart';
import 'package:phone_zone/core/utils/constant.dart';
import 'package:phone_zone/features/auth/data/repos/user_repo_imlpement.dart';
import 'package:phone_zone/features/auth/presentation/bloc/user_cubit/user_cubit.dart';
import 'package:phone_zone/features/splash/presentation/view/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper().init();
  runApp(const PhoneZone());
}

class PhoneZone extends StatelessWidget {
  const PhoneZone({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          UserCubit(UserRepoImlpement(dioClass: DioClass(dio: Dio()))),
      child: MaterialApp(
        title: titleApp,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: onGenerateRoute,
        initialRoute: SplashView.id,
      ),
    );
  }
}
