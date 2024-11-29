import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/app_style.dart';
import 'package:weather_app/core/widgets/daily_weekly_button.dart';
import 'package:weather_app/features/home/presentation/views/widgets/daily_weekly_list_item.dart';
import 'package:weather_app/features/home/presentation/views/widgets/temp_details.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.location_on,
              color: Colors.white54,
              weight: 16,
            ),
            Text(
              'Current Location',
              style: Styles.textStyle12,
            ),
          ],
        ),
        const TempDetails(),
        const SizedBox(
          height: 32,
        ),
        DailyWeeklyList(),
      ],
    );
  }
}
