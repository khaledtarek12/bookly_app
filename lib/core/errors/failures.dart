import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errorMessage: 'Connection timeout With ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: 'Send timeout With ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: 'Receive timeout With ApiServer');

      case DioExceptionType.badCertificate:
        return ServerFailure(errorMessage: 'Bad Certificate  With ApiServer');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(
            errorMessage: 'Request With ApiServer Was Canceld');
      case DioExceptionType.connectionError:
        return ServerFailure(errorMessage: 'Connection Error With ApiServer');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure(errorMessage: 'there is No Internet Connection');
        }
        return ServerFailure(errorMessage: 'UnKnown Error Please try again!');
      default:
        return ServerFailure(
            errorMessage: 'Oops there was an error , please try again');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errorMessage: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
          errorMessage: 'Your Request Not Found , Please try again later!');
    } else if (statusCode == 500) {
      return ServerFailure(
          errorMessage: 'Internal Server Error , please try later!');
    } else {
      return ServerFailure(
          errorMessage: 'Oops there was an error , please try again');
    }
  }
}
