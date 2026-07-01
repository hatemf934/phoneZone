import 'package:flutter/material.dart';
import 'package:phone_zone/core/helper/cache_helper.dart';
import 'package:phone_zone/core/helper/on_generate.dart';
import 'package:phone_zone/core/helper/server_locator.dart';
import 'package:phone_zone/core/utils/constant.dart';
import 'package:phone_zone/features/auth/data/repos/user_repo_imlpement.dart';
import 'package:phone_zone/features/auth/presentation/bloc/user_cubit/user_cubit.dart';
import 'package:phone_zone/features/home/data/repos/phone_repo_implement.dart';
import 'package:phone_zone/features/home/presentation/bloc/phone_details/phone_details_cubit.dart';
import 'package:phone_zone/features/splash/presentation/view/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setUp();
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper().init();
  runApp(const PhoneZone());
}

class PhoneZone extends StatelessWidget {
  const PhoneZone({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserCubit(getIt<UserRepoImlpement>()),
        ),
        BlocProvider(
          create: (context) => PhoneDetailsCubit(getIt<PhoneRepoImplement>()),
        ),
      ],
      child: MaterialApp(
        title: titleApp,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: onGenerateRoute,
        initialRoute: SplashView.id,
      ),
    );
  }
}
