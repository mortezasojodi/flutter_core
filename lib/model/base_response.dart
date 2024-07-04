import 'package:core/model/pagination.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response.g.dart';

class AppBaseResponse {
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final dynamic data;
  @JsonKey(name: 'success')
  final bool success;
  AppBaseResponse({this.message, required this.data, this.success = true});
}

class BaseResponse {
  @JsonKey(name: 'message')
  final String? message;
  BaseResponse({this.message});

  factory BaseResponse.fromJson(Map<String, dynamic> json) {
    return BaseResponse(
      message: json["message"],
    );
  }
}

@JsonSerializable(genericArgumentFactories: true)
class BaseListResponse<T> extends BaseResponse {
  List<T>? contents;

  BaseListResponse({
    String? message,
    this.contents,
  }) : super(
          message: message,
        );

  factory BaseListResponse.fromJson(
      Map<String, dynamic> json, Function(Map<String, dynamic>) create) {
    var contents = <T>[];
    json['data'].forEach((v) {
      contents.add(create(v));
    });

    return BaseListResponse<T>(message: json["message"], contents: contents);
  }
}

@JsonSerializable(genericArgumentFactories: true)
class BaseSingleResponse<T> extends BaseResponse {
  T? data;

  BaseSingleResponse({
    String? message,
    this.data,
  }) : super(
          message: message,
        );

  //todo: handle it in more efficient way!
  factory BaseSingleResponse.fromJson(
      Map<String, dynamic>? json, Function(Map<String, dynamic>) create) {
    return BaseSingleResponse<T>(
      message:
          (json != null && json.containsKey("message")) ? json["message"] : "",
      data: (json != null && json != {})
          ? (json.containsKey("data"))
              ? (json['data'] != null)
                  ? create(json['data'])
                  : null
              : create(json)
          : null,
    );
  }
}

@JsonSerializable(genericArgumentFactories: true)
class BaseListResponseWithPages<T> extends BaseListResponse<T> {
  Pagination? pagination;
  BaseListResponseWithPages({
    this.pagination,
    String? message,
    List<T>? contents,
  }) : super(
          contents: contents,
          message: message,
        );

  factory BaseListResponseWithPages.fromJson(
      Map<String, dynamic>? json, Function(Map<String, dynamic>) create) {
    var contents = <T>[];
    json?['data'].forEach((v) {
      contents.add(create(v));
    });

    var pagination = Pagination.fromJson(json?['data']['pagination']);

    return BaseListResponseWithPages<T>(
      contents: contents,
      pagination: pagination,
    );
  }
}
