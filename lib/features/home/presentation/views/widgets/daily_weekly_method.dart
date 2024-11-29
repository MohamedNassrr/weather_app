import 'package:flutter/material.dart';
import 'package:weather_app/core/widgets/daily_weekly_button.dart';

class DailyWeeklyMethod extends StatefulWidget {
  DailyWeeklyMethod({super.key});

  @override
  State<DailyWeeklyMethod> createState() => _DailyWeeklyMethodState();
}

class _DailyWeeklyMethodState extends State<DailyWeeklyMethod> {
  final List<String> titles = const [
    'Daily',
    'Weekly'
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: ListView.builder(itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 5.5,
          ),
          child: GestureDetector(
            onTap: (){
              activeIndex = index;
              setState(() {

              });
            },
            child: DailyAndWeaklyButton(
              isActive:activeIndex == index,
              title: titles[index],
            ),
          ),
        );
      },
        itemCount: titles.length,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
      ),
    );
  }
}
