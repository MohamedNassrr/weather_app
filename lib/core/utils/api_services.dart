import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/features/home/models/weather_model.dart';

class ApiService {
  final Dio dio;
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = '44b3881cdfec471faf6202330250101';

  ApiService(this.dio);

  Future<WeatherModel> getWeather({
    String cityName = 'cairo',
  }) async {
    try {
      Response response = await dio.get(
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1',
      );
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errMessage = e.response?.data['error']['message'];
      throw Exception(errMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('oops there is an error, try again!');
    }
  }
}
