import 'package:riverpod_demo/utils/app_errors.dart';

extension AppErrorExtension on AppError {
  String getErrorMessage() {
    if (this is InternetError) {
      return 'Internet Error';
    } else if (this is BadRequestError) {
      return 'Bad Request Error';
    } else {
      return 'Default Error';
    }
  }
}
