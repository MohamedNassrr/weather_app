import 'package:flutter/material.dart';
import 'package:weather_app/features/home/presentation/views/widgets/daily_weekly_method.dart';

class DailyWeeklyList extends StatelessWidget {
  const DailyWeeklyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 86
          ),
          child: DailyWeeklyMethod(),
        ),
      ],
    );
  }
}

