import 'package:core/network/base/api_failure.dart';
import 'package:dio/dio.dart';
import 'package:core/core.dart';

class APIProvider {
  static const requestTimeOut = Duration(seconds: 25);

  static final _singleton = APIProvider();
  static APIProvider get instance => _singleton;

  Future<AppBaseResponse> request(APIRequestRepresentable request,
      [ResponseType? responseType]) async {
    Response<dynamic>? response;
    try {
      switch (request.method) {
        case HTTPMethod.get:
          try {
            response = await BaseClientHelper.getBaseClient().get(
                request.endpoint + request.url + request.path,
                queryParameters: request.getquery,
                data: request.getbody,
                cancelToken: request.getcancelToken,
                onReceiveProgress: (progress, total) =>
                    streamable(progress, total, request),
                options: Options(
                    headers: request.getheaders, responseType: responseType));
            return _returnResponse(response);
          } on DioException catch (e) {
            if (e.response != null) {
              return _returnResponse(e.response!);
            } else {
              throw onDioError(e);
            }
          }
        case HTTPMethod.post:
          try {
            response = await BaseClientHelper.getBaseClient().post(
                request.endpoint + request.url + request.path,
                data: request.getbody,
                cancelToken: request.getcancelToken,
                queryParameters: request.getquery,
                onReceiveProgress: (progress, total) =>
                    streamable(progress, total, request),
                options: Options(
                  headers: request.getheaders,
                ));
            return _returnResponse(response);
          } on DioException catch (e) {
            if (e.response != null) {
              return _returnResponse(e.response!);
            } else {
              throw onDioError(e);
            }
          }
        case HTTPMethod.delete:
          try {
            response = await BaseClientHelper.getBaseClient()
                .delete(request.endpoint + request.url + request.path,
                    data: request.getbody,
                    cancelToken: request.getcancelToken,
                    queryParameters: request.getquery,
                    options: Options(
                      headers: request.getheaders,
                    ));
            return _returnResponse(response);
          } on DioException catch (e) {
            // print("error: $e");
            if (e.response != null)
              return _returnResponse(e.response!);
            else
              throw onDioError(e);
          }
        case HTTPMethod.put:
          try {
            response = await BaseClientHelper.getBaseClient().put(
                request.endpoint + request.url + request.path,
                data: request.getbody,
                queryParameters: request.query,
                cancelToken: request.getcancelToken,
                onReceiveProgress: (progress, total) =>
                    streamable(progress, total, request),
                options: Options(
                  headers: request.getheaders,
                ));
            return _returnResponse(response);
          } on DioException catch (e) {
            // print("error: $e");
            if (e.response != null)
              return _returnResponse(e.response!);
            else
              throw onDioError(e);
          }
        case HTTPMethod.patch:
          try {
            response = await BaseClientHelper.getBaseClient().patch(
                request.endpoint + request.url + request.path,
                data: request.getbody,
                cancelToken: request.getcancelToken,
                onReceiveProgress: (progress, total) =>
                    streamable(progress, total, request),
                options: Options(
                  headers: request.getheaders,
                ));
            return _returnResponse(response);
          } on DioException catch (e) {
            // print("error: $e");
            if (e.response != null)
              return _returnResponse(e.response!);
            else
              throw onDioError(e);
          }
      }
    } catch (e) {
      if (e is DioException)
        throw ServiceUnavailableException(
          "در روند عملیات خطایی رخ داد",
        );
      else
        throw e;
    }
  }

  AppBaseResponse parseData(dynamic json) {
    if (json is List || json is String) {
      return AppBaseResponse(data: json, message: "", success: true);
    }
    if (json != null &&
        json != {} &&
        json['Message'] != null &&
        json["Success"] != null) {
      return AppBaseResponse(
          data: json["Data"],
          message: json["Message"],
          success: json["Success"]);
    }
    //
    var message =
        (json != null && json.containsKey("message")) ? json["message"] : "";
    dynamic data = (json != null && json != {})
        ? (json.containsKey("data"))
            ? (json['data'] != null)
                ? json['data']
                : null
            : json
        : null;

    return AppBaseResponse(data: data, message: message);
  }

  AppBaseResponse _returnResponse(Response response) {
    final String error = "در روند عملیات خطایی رخ داد";
    switch (response.statusCode) {
      case 201:
      case 200:
        return parseData(response.data);

      case 400:
        {
          throw UnAuthorizedException(response.data["message"] ?? error,
              (response.data["error"]) ?? error);
        }
      case 401:
        //todo
        // navigatorKey.currentContext!.read<AppConfigCubit>().logout();

        throw UnAuthorizedException((response.data["message"]) ?? error,
            (response.data["error"]) ?? error);
      case 402:
        throw UnAuthorizedException((response.data["message"]) ?? error,
            (response.data["error"]) ?? error);
      case 403:
        throw UnAuthorizedException((response.data["message"]) ?? error,
            (response.data["error"]) ?? error);
      case 404:
        throw NotFoundException(
          response.data["message"] ?? error,
        );
      case 405:
        throw UnAuthorizedException((response.data["message"]) ?? error,
            (response.data["error"]) ?? error);
      case 422:
      case 500:
        throw InternalServerError(error);
      case 503:
        throw ServiceUnavailableException(error);
      default:
        throw FetchDataException(error);
    }
  }

  bool checkErrorCodeIsAuth(int code) {
    switch (code) {
      case 90:
      case 100:
      case 110:
      case 120:
        return true;

      default:
        return false;
    }
  }

  Failure onDioError(DioException e) {
    if (DioExceptionType.connectionError == e.type) {
      if (e.message!.contains('SocketException')) {
        return ConnectionFailure("");
      } else {
        return ServiceUnavailableException(
          "ارتباط با سرور برقرار نمی‌باشد",
        );
      }
    } else
      return ServiceUnavailableException(
        "ارتباط با سرور برقرار نمی‌باشد",
      );
  }

  void streamable(int progress, int total, APIRequestRepresentable request) {
    if (request case APIRequestRepresentableStream request) {
      request.streamController?.sink
          .add({"progress": progress, "total": total});
    }
  }
}
