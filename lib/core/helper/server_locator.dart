import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:phone_zone/core/api/dio_class.dart';
import 'package:phone_zone/features/auth/data/repos/user_repo_imlpement.dart';
import 'package:phone_zone/features/home/data/repos/phone_repo_implement.dart';

final getIt = GetIt.instance;
void setUp() {
  getIt.registerSingleton<DioClass>(DioClass(dio: Dio()));
  getIt.registerSingleton<UserRepoImlpement>(
    UserRepoImlpement(dioClass: getIt<DioClass>()),
  );
  getIt.registerSingleton<PhoneRepoImplement>(
    PhoneRepoImplement(dioclass: getIt<DioClass>()),
  );
}
