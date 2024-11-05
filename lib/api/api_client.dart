import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiClient {
  final String _baseUrl;
  late final Dio _dio;

  Dio get dio => _dio;

  ApiClient(this._baseUrl) {
    _dio = Dio(
      BaseOptions(
        baseUrl: _baseUrl,
        connectTimeout: const Duration(minutes: 1),
        receiveTimeout: const Duration(minutes: 1),
      ),
    )
      ..interceptors.add(
        PrettyDioLogger(
            // requestHeader: kDebugMode,
            requestBody: kDebugMode,
            responseBody: false
            // responseBody: kDebugMode,
            // responseHeader: kDebugMode,
            // error: kDebugMode,
            ),
      )
      ..interceptors.add(InterceptorsWrapper(onError: onError));
  }

  void onError(DioException err, ErrorInterceptorHandler handler) {
    handler.next(err);
  }
}
