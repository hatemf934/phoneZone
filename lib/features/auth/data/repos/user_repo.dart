import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:phone_zone/core/error/failure.dart';
import 'package:phone_zone/features/auth/data/model/sign_in_model.dart';

abstract class UserRepo {
  Future<Either<Failure, void>> signUp({
    required String email,
    required String password,
    required String username,
    XFile? avatar,
  });
  Future<Either<Failure, SignInModel>> signIn({
    required String email,
    required String password,
  });
}
