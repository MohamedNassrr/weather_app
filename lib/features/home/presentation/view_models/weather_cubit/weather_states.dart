import 'package:weather_app/features/home/models/weather_model.dart';

abstract class WeatherStates{}

class WeatherInitialState extends WeatherStates{}

class WeatherLoadingState extends WeatherStates{}

class WeatherSuccessState extends WeatherStates{
  final WeatherModel weatherModel;

  WeatherSuccessState(this.weatherModel);
}

class WeatherErrorState extends WeatherStates{
  final String errMessage;

  WeatherErrorState(this.errMessage);
}