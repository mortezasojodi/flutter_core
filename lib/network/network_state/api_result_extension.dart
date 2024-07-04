import 'package:core/core.dart';
import 'package:core/network/base/api_failure.dart';
import 'package:core/network/network_state/network_exceptions.dart';

extension ErrorApiResultExtension on Object {
  Result<T> toResult<T>(StackTrace? stackTrace) {
    final error = NetworkExceptions.getDioException(this, stackTrace);
    final str = NetworkExceptions.getErrorMessage(
        error ?? const NetworkExceptions.unexpectedError());

    return Result.failure(
        error: (this is Failure) ? (this as Failure).error : str.values.first,
        message: (this is Failure)
            ? (this as Failure).message
            : "در روند عملیات خطایی رخ داد");
  }
}

extension SuccessResultExtension on BaseSingleResponse {
  Result<T> toResult<T>() {
    var apiResult = Result<T>.success(data: data, message: message);
    return apiResult;
  }
}
