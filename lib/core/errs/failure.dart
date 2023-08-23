import 'package:dio/dio.dart';

abstract class Failure{
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure{
  ServerFailure(super.errMessage);


  factory ServerFailure.fromDioError(DioException dioError){
    switch (dioError.type){

      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout With server ');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout With server ');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Timeout With server ');

      case DioExceptionType.badCertificate:
        return ServerFailure('incorrect certificate as configured ');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioError.response!.statusCode , dioError.response!.data
        );

      case DioExceptionType.cancel:
        return ServerFailure('Request to api server was canceled');

      case DioExceptionType.connectionError:
        return ServerFailure('Connection error with server');

      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')){
          return ServerFailure('No internet connection');
        }else {
          return ServerFailure('Unexpected error please try later');
        }
      default :
        return ServerFailure('Opps there was an error, please try later');
    }
  }
  
  factory ServerFailure.fromResponse (int? statusCode , dynamic response){
    if (statusCode == 400 || statusCode == 401 || statusCode == 403 ){
      return ServerFailure(response['error']['message']);
    }else if (statusCode == 404){
      return ServerFailure('Your request not found, please try later');
    }else if (statusCode == 500){
      return ServerFailure('Internal server error, please try later');
    }else {
      return ServerFailure('Opps there was an error, please try later');
    }
  }
  
}