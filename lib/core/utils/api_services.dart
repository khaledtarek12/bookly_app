import 'package:dio/dio.dart';

class ApiServices {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio = Dio();

  Future<Map<String, dynamic>> get({required String endPoints}) async {
    var response = await _dio.get('$_baseUrl$endPoints');

    return response.data;
  }
}
