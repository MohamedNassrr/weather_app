import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/core/utils/api_services.dart';
import 'package:weather_app/features/home/models/weather_model.dart';
import 'package:weather_app/features/home/presentation/view_models/weather_cubit/weather_states.dart';

class WeatherCubit extends Cubit<WeatherStates> {
  WeatherCubit() : super(WeatherInitialState());

  late WeatherModel weatherModel;
  getWeatherCubit({required String cityName}) async {
    emit(WeatherLoadingState());
    try {
       weatherModel =
          await ApiService(Dio()).getWeather(cityName: cityName);
      emit(WeatherSuccessState(weatherModel));
    } catch (e) {
      emit(WeatherErrorState(e.toString()));
      log(e.toString());
    }
  }
}
