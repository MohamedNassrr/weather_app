class WeatherModel {
  final String cityName;
  final double temp;
  final String image;
  final String weatherCondition;

  WeatherModel({
    required this.cityName,
    required this.temp,
    required this.image,
    required this.weatherCondition,
  });

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      cityName: json['location']['name'],
      temp: json['current']['temp_c'],
      image: json['current']['condition']['icon'],
      weatherCondition: json['current']['condition']['text'],
    );
  }
}
