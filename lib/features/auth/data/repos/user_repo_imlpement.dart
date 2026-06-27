import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:phone_zone/core/api/dio_class.dart';
import 'package:phone_zone/core/api/end_point.dart';
import 'package:phone_zone/core/error/failure.dart';
import 'package:phone_zone/core/error/server_failure.dart';
import 'package:phone_zone/core/helper/cache_helper.dart';
import 'package:phone_zone/features/auth/data/model/sign_in_model.dart';
import 'package:phone_zone/features/auth/data/model/sign_up_model.dart';
import 'package:phone_zone/features/auth/data/repos/user_repo.dart';

class UserRepoImlpement extends UserRepo {
  final DioClass dioClass;

  UserRepoImlpement({required this.dioClass});
  @override
  Future<Either<Failure, SignInModel>> signIn({
    required String password,
    required String username,
  }) async {
    try {
      final response = await dioClass.post(
        EndPointClass.signin,
        data: {ApiKey.username: username, ApiKey.password: password},
      );
      SignInModel user = SignInModel.fromJson(response);
      CacheHelper().saveData(key: ApiKey.accessToken, value: user.accessToken);
      CacheHelper().saveData(
        key: ApiKey.refreshToken,
        value: user.refreshToken,
      );
      final decodedToken = JwtDecoder.decode(user.accessToken);
      CacheHelper().saveData(key: ApiKey.id, value: decodedToken[ApiKey.id]);
      return right(SignInModel.fromJson(response));
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    }
  }

  @override
  Future<Either<Failure, SignUpModel>> signUp({
    required String email,
    required String password,
    required String phone,
    required String username,
  }) async {
    try {
      final response = await dioClass.post(
        EndPointClass.signup,
        data: {
          ApiKey.email: email,
          ApiKey.phone: phone,
          ApiKey.username: username,
          ApiKey.password: password,
        },
      );
      return right(SignUpModel.fromJson(response));
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    }
  }
}
