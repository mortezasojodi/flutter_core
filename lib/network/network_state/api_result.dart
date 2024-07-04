import 'package:core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  const factory Result.success({required T data, String? message}) = Success<T>;

  const factory Result.successPaginatedResponse(
      {required T contents,
      String? message,
      Pagination? pagination}) = successPaginatedResponse<T>;

  const factory Result.failure({String? error, String? message}) = Failures<T>;
}
