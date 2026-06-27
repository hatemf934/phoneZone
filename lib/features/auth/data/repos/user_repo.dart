import 'package:dartz/dartz.dart';
import 'package:phone_zone/core/error/failure.dart';
import 'package:phone_zone/features/auth/data/model/sign_in_model.dart';
import 'package:phone_zone/features/auth/data/model/sign_up_model.dart';

abstract class UserRepo {
  Future<Either<Failure, SignUpModel>> signUp({
    required String email,
    required String password,
    required String phone,
    required String username,
  });
  Future<Either<Failure, SignInModel>> signIn({
    required String password,
    required String username,
  });
}
