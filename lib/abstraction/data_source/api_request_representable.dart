import 'dart:async';

import 'package:core/model/base_response.dart';
import 'package:dio/dio.dart';

enum HTTPMethod { get, post, delete, put, patch }

extension HTTPMethodString on HTTPMethod {
  String get string {
    switch (this) {
      case HTTPMethod.get:
        return "get";
      case HTTPMethod.post:
        return "post";
      case HTTPMethod.delete:
        return "delete";
      case HTTPMethod.patch:
        return "patch";
      case HTTPMethod.put:
        return "put";
    }
  }
}

abstract class APIRequestRepresentable {
  final CancelToken? cancelToken;
  final dynamic body;
  final dynamic queryPath;
  final Map<String, dynamic>? query;
  final Map<String, dynamic>? headers;
  APIRequestRepresentable(
      {this.body, this.query, this.queryPath, this.headers, this.cancelToken});
  CancelToken? get getcancelToken;

  String get url;
  String get endpoint;
  String get path;
  HTTPMethod get method;
  Map<String, dynamic>? get getheaders;
  Map<String, dynamic>? get getquery;
  dynamic get getbody;
  Future<AppBaseResponse> request();
}

abstract class APIRequestRepresentableStream extends APIRequestRepresentable {
  StreamController<Map<String, dynamic>>? streamController;
  APIRequestRepresentableStream(
      {super.body,
      super.query,
      super.queryPath,
      super.headers,
      super.cancelToken,
      this.streamController});
  StreamController<Map<String, dynamic>>? get getStreamController;
}
