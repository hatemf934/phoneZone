import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:phone_zone/core/api/dio_class.dart';
import 'package:phone_zone/core/api/end_point.dart';
import 'package:phone_zone/core/error/failure.dart';
import 'package:phone_zone/core/error/general_failure.dart';
import 'package:phone_zone/core/error/server_failure.dart';
import 'package:phone_zone/features/home/data/model/phone_model.dart';
import 'package:phone_zone/features/home/data/repos/phone_repo.dart';

class PhoneRepoImplement extends PhoneRepo {
  final DioClass dioclass;

  PhoneRepoImplement({required this.dioclass});
  @override
  Future<Either<Failure, List<PhoneModel>>> getAllPhones() async {
    try {
      final response = await dioclass.get(
        "${EndPointClass.productbaseUrl}${EndPointClass.product}${EndPointClass.smartPhone}",
      );
      List<dynamic> phonesJson = response[ApiKey.products];
      List<PhoneModel> phoneList = phonesJson
          .map((phone) => PhoneModel.fromJson(phone))
          .toList();

      return Right(phoneList);
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

  @override
  Future<Either<Failure, PhoneModel>> getPhoneById(int id) async {
    try {
      final response = await dioclass.get(
        "${EndPointClass.productbaseUrl}${EndPointClass.product}/$id",
      );
      return Right(PhoneModel.fromJson(response));
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
