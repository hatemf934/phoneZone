import 'package:dio/dio.dart';
import 'package:phone_zone/core/api/api_class.dart';
import 'package:phone_zone/core/api/api_interceptors.dart';
import 'package:phone_zone/core/api/end_point.dart';

class DioClass extends ApiClass {
  final Dio dio;

  DioClass({required this.dio}) {
    dio.options.baseUrl = EndPointClass.userbaseUrl;
    dio.interceptors.add(ApiInterceptors());
    dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestBody: true,
        requestHeader: true,
        requestUrl: true,
        responseBody: true,
        responseHeader: true,
        responseUrl: true,
      ),
    );
  }
  @override
  Future<dynamic> delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryparameter,
    bool isFormData = false,
  }) async {
    final response = await dio.delete(
      path,
      data: isFormData ? FormData.fromMap(data) : data,
      queryParameters: queryparameter,
    );
    return response.data;
  }

  @override
  Future<dynamic> get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryparameter,
  }) async {
    final response = await dio.get(
      path,
      data: data,
      queryParameters: queryparameter,
    );
    return response.data;
  }

  @override
  Future<dynamic> patch(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryparameter,
    bool isFormData = false,
  }) async {
    final response = await dio.patch(
      path,
      data: isFormData ? FormData.fromMap(data) : data,
      queryParameters: queryparameter,
    );
    return response.data;
  }

  @override
  Future<dynamic> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryparameter,
    bool isFormData = false,
  }) async {
    final response = await dio.post(
      path,
      data: isFormData ? FormData.fromMap(data) : data,
      queryParameters: queryparameter,
    );
    return response.data;
  }
}
