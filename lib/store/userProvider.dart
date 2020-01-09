import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ProviderModel extends ChangeNotifier {
  Map data;
  // String baseUrl = 'https://thesecretpsychics.com/get-app-timers';
  Dio dio = new Dio();

  Dio _getDio() {
    if (this.dio == null) {
//      this.dio = Dio(baseUr;

      dio = Dio();

      dio.interceptors.add(LogInterceptor(
          request: true,
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
          responseBody: true,
          error: true));
    }
    return this.dio;
  }

  // user store
  // get userDetails => (userName);


  Future<Map> getAllData() async {

    Options options = Options(headers: {"Content-Type": "application/json"});

    Response response = await _getDio().get(
        'https://thesecretpsychics.com/get-app-timers',
        options: options);
    if (response.statusCode == 200 || response.statusCode == 201) {
      var responseData = response.data;
      // Map<String, dynamic> getAllData = responseData[0];
      print(responseData);
      return responseData;
    } else {
      print(response.statusCode);
    }
  }
}
