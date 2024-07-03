import 'dart:io';
import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(String errMessage) : super(errMessage);

  factory ServerFailure.fromDioError(DioException e) {
    String errorMessage = "Unexpected Error, Please try again!";

    if (e.error is SocketException) {
      errorMessage = 'No Internet Connection';
    } else if (e.type == DioExceptionType.connectionTimeout) {
      errorMessage = 'Connection timeout with ApiServer';
    } else if (e.type == DioExceptionType.sendTimeout) {
      errorMessage = 'Send timeout with ApiServer';
    } else if (e.type == DioExceptionType.receiveTimeout) {
      errorMessage = 'Receive timeout with ApiServer';
    } else if (e.type == DioExceptionType.badResponse) {
      if (e.response != null) {
        errorMessage = _handleResponseError(e.response!);
      } else {
        errorMessage = 'Response from server is null';
      }
    } else if (e.type == DioExceptionType.cancel) {
      errorMessage = 'Request to ApiServer was canceled';
    }

    return ServerFailure(errorMessage);
  }

  static String _handleResponseError(Response response) {
    final statusCode = response.statusCode;

    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return response.data['error']['message'] ?? 'Authorization error';
    } else if (statusCode == 404) {
      return 'Your request not found, Please try later!';
    } else if (statusCode == 500) {
      return 'Internal Server error, Please try later';
    } else {
      return 'Oops! There was an Error, Please try again';
    }
  }
}
