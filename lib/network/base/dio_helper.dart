import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:curl_logger_dio_interceptor/curl_logger_dio_interceptor.dart';
import 'package:core/core.dart';

class BaseClientHelper {
  static Dio? dio;

  static String baseUrl = "";
  static IAppConfig? config;

  static Dio getBaseClient() {
    if (null == dio) {
      dio = Dio();

      if (!kReleaseMode) {
        dio!.interceptors.add(CurlLoggerDioInterceptor(printOnSuccess: true));
      }

      dio?.interceptors.add(InterceptorsWrapper(
        onResponse: (response, handler) {
          return handler.next(response);
        },
        onRequest: (options, handler) {
          if (options.path != "https://map.ir/reverse/no") {
            options.headers["App-Version"] = config?.appVersion();
          }
          return handler.next(options);
        },
        onError: (error, handler) {
          if (error.response?.statusCode == 401 &&
              !error.requestOptions.path.contains("/users/token") &&
              !error.requestOptions.path.contains("users/login")) {
            if ((error.requestOptions.headers["Authorization"]) is String &&
                (config!.hasToken)) {
              config!.refreshToken(
                error.requestOptions.headers["Authorization"]
                    .replaceAll("Bearer ", ""),
                onSuccess: (newToken) async {
                  resolveRequest(newToken, error, handler);
                },
              );
            } else {
              config!.logout();
            }
          } else {
            return handler.next(error);
          }
        },
      ));
    }
    return dio!;
  }

  static resolveRequest(String newtoken, DioException error,
      ErrorInterceptorHandler handler) async {
    error.requestOptions.headers["Authorization"] = "Bearer $newtoken";
    switch (error.requestOptions.method) {
      case "POST":
        handler.resolve(await dio!.post(error.requestOptions.path,
            data: error.requestOptions.data,
            queryParameters: error.requestOptions.queryParameters,
            options: Options(
                method: error.requestOptions.method,
                headers: error.requestOptions.headers)));
        break;
      case "GET":
        handler.resolve(await dio!.get(error.requestOptions.path,
            data: error.requestOptions.data,
            queryParameters: error.requestOptions.queryParameters,
            options: Options(
                method: error.requestOptions.method,
                headers: error.requestOptions.headers)));
        break;
      case "PUT":
        handler.resolve(await dio!.put(error.requestOptions.path,
            data: error.requestOptions.data,
            queryParameters: error.requestOptions.queryParameters,
            options: Options(
                method: error.requestOptions.method,
                headers: error.requestOptions.headers)));
        break;
      case "PATCH":
        handler.resolve(await dio!.patch(error.requestOptions.path,
            data: error.requestOptions.data,
            queryParameters: error.requestOptions.queryParameters,
            options: Options(
                method: error.requestOptions.method,
                headers: error.requestOptions.headers)));
        break;

      case "DELETE":
        handler.resolve(await dio!.delete(error.requestOptions.path,
            data: error.requestOptions.data,
            queryParameters: error.requestOptions.queryParameters,
            options: Options(
                method: error.requestOptions.method,
                headers: error.requestOptions.headers)));
        break;
      default:
    }
  }
}
