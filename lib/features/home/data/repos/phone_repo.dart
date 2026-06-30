import 'package:dartz/dartz.dart';
import 'package:phone_zone/core/error/failure.dart';
import 'package:phone_zone/features/home/data/model/phone_model.dart';

abstract class PhoneRepo {
  Future<Either<Failure, List<PhoneModel>>> getAllPhones();
}
