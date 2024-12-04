import 'package:flutter/material.dart';
import 'package:weather_app/features/home/presentation/views/widgets/daily_weather_item.dart';

class DailyWeatherListView extends StatelessWidget {
  const DailyWeatherListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 12
          ),
          child: DailyWeatherItem(),
        ),
      ),
    );
  }
}
