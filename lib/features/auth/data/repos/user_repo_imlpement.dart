import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:phone_zone/core/api/dio_class.dart';
import 'package:phone_zone/core/api/end_point.dart';
import 'package:phone_zone/core/error/cache_failure.dart';
import 'package:phone_zone/core/error/failure.dart';
import 'package:phone_zone/core/error/general_failure.dart';
import 'package:phone_zone/core/error/server_failure.dart';
import 'package:phone_zone/core/helper/cache_helper.dart';
import 'package:phone_zone/features/auth/data/model/sign_in_model.dart';
import 'package:phone_zone/features/auth/data/repos/user_repo.dart';

class UserRepoImlpement extends UserRepo {
  final DioClass dioClass;

  UserRepoImlpement({required this.dioClass});
  @override
  Future<Either<Failure, SignInModel>> signIn({
    required String email,
    required String password,
  }) async {
    late SignInModel user;

    try {
      final response = await dioClass.post(
        EndPointClass.signin,
        data: {ApiKey.email: email, ApiKey.password: password},
      );
      user = SignInModel.fromJson(response);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } on TypeError catch (e) {
      return left(GeneralFailure.fromException(e));
    } on FormatException catch (e) {
      return left(GeneralFailure.fromException(e));
    } catch (e) {
      return left(GeneralFailure.fromException(e));
    }

    try {
      await CacheHelper().saveData(
        key: ApiKey.accessToken,
        value: user.accessToken,
      );
      await CacheHelper().saveData(
        key: ApiKey.refreshToken,
        value: user.refreshToken,
      );
      final decodedToken = JwtDecoder.decode(user.accessToken);
      await CacheHelper().saveData(
        key: ApiKey.id,
        value: decodedToken[ApiKey.id],
      );
    } catch (e) {
      return left(CacheFailure.fromException(e));
    }

    return right(user);
  }

  @override
  Future<Either<Failure, void>> signUp({
    required String email,
    required String password,
    required String username,
  }) async {
    try {
      await dioClass.post(
        EndPointClass.signup,
        data: {
          ApiKey.email: email,
          ApiKey.name: username,
          ApiKey.password: password,
          ApiKey.avatar: 'https://i.imgur.com/QJaexge.jpeg',
        },
      );
      return right(null);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } on TypeError catch (e) {
      return left(GeneralFailure.fromException(e));
    } on FormatException catch (e) {
      return left(GeneralFailure.fromException(e));
    } catch (e) {
      return left(GeneralFailure.fromException(e));
    }
  }
}
