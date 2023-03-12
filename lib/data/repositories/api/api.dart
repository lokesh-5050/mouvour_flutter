import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class API {
  static final API_KEY = "e458813ff8f9fd6ae8597fa989d111ef";

  Dio _dio = Dio();

  API() {
    _dio.options.baseUrl = "https://api.themoviedb.org/3";
  }

  Dio get sendRequest => _dio;
}
