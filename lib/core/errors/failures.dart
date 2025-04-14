import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection Timeout with API Server");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send Timeout with API Server");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive Timeout with API Server");
      case DioExceptionType.badCertificate:
        return ServerFailure("Bad Certificate with API Server");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure("Request to API Server was Canceled");
      case DioExceptionType.connectionError:
        return ServerFailure("No Internet Connection");
      case DioExceptionType.unknown:
        if (dioError.message!.contains("SocketException")) {
          return ServerFailure("No Internet Connection");
        }
        return ServerFailure("Unexpected error, please try again!");
      default:
        return ServerFailure("Unexpected error, please try again!");
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailure("Your request not found, please try later");
    } else if (statusCode == 500) {
      return ServerFailure("Internal Server Error, please try later");
    } else {
      return ServerFailure("Oops There was an Error, please try again");
    }
  }
}
