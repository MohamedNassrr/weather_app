import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/app_style.dart';
import 'package:weather_app/core/utils/assets_data.dart';
import 'package:weather_app/features/home/presentation/views/widgets/daily_weather_list_view.dart';
import 'package:weather_app/features/home/presentation/views/widgets/daily_weekly_list_item.dart';
import 'package:weather_app/features/home/presentation/views/widgets/temp_details.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: TextButton(
            onPressed: () {},
            child: const Text(
              'Cairo',
              style: Styles.textStyle32,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AssetsData.locationIcons,
            ),
            const SizedBox(
              width: 8,
            ),
            const Text(
              'Current Location',
              style: Styles.textStyle12,
            ),
          ],
        ),
        const TempDetails(),
        const SizedBox(
          height: 32,
        ),
        const DailyWeeklyList(),
        const SizedBox(
          height: 24,
        ),
        const DailyWeatherListView(),
      ],
    );
  }
}
