abstract class ApiClass {
  Future<dynamic> get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryparameter,
  });
  Future<dynamic> post(
    String path, {
    Object? data,
    Map<String, dynamic>? queryparameter,
    bool isFormData = false,
  });
  Future<dynamic> patch(
    String path, {
    Object? data,
    Map<String, dynamic>? queryparameter,
    bool isFormData = false,
  });
  Future<dynamic> delete(
    String path, {
    Object? data,
    Map<String, dynamic>? queryparameter,
    bool isFormData = false,
  });
}
