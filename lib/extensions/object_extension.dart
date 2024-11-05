import '../utils/app_errors.dart';
import 'app_error_extension.dart';

extension ObjectExtension on Object {
  String getErrorMessage() {
    if (this is AppError) {
      return (this as AppError).getErrorMessage();
    } else {
      return 'Default Error';
    }
  }
}
