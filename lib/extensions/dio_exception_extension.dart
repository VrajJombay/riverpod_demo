import 'package:dio/dio.dart';
import 'package:riverpod_demo/utils/app_errors.dart';

extension DioExceptionExtension on DioException {
  AppError get appError {
    switch (type) {
      case DioExceptionType.connectionError:
        return InternetError();
      case DioExceptionType.badResponse:
        return BadRequestError();
      default:
        return UnknownError();
    }
  }
}
