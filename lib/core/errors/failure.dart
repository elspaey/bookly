import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class serverFailure extends Failure {
  serverFailure(super.errMessage);
  factory serverFailure.fromDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return serverFailure("connection is time out");
      case DioExceptionType.sendTimeout:
        return serverFailure("send is time out");
      case DioExceptionType.receiveTimeout:
        return serverFailure("receive is time out");
      case DioExceptionType.badCertificate:
        return serverFailure("badCertificate");
      case DioExceptionType.badResponse:
        return serverFailure.fromResponse(
            error.response!.statusCode!, error.response!.data);
      case DioExceptionType.cancel:
        return serverFailure(" time out");
      case DioExceptionType.connectionError:
        return serverFailure("no internet connection");
      case DioExceptionType.unknown:
        return serverFailure("there was an error,try again later");
    }
  }
  factory serverFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 404) {
      return serverFailure("your request was not found");
    } else if (statusCode == 500) {
      return serverFailure("there is a problem with server , try later");
    } else if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return serverFailure(response["error"]["message"]);
    } else {
      return serverFailure("there was an error,please try again ");
    }
  }
}
