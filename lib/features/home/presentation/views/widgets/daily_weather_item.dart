import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/app_style.dart';
import 'package:weather_app/core/utils/assets_data.dart';

class DailyWeatherItem extends StatelessWidget {
  const DailyWeatherItem({super.key});
// width: 65.85 height: 139
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.172,
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xcbffffff),
              Color(0x00ffffff),
            ],
            end: Alignment.bottomRight,
            begin: Alignment.topLeft,
          ),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(100),
          border: const Border.fromBorderSide(
            BorderSide(color: Colors.white24),
          ),
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Now',
              style: Styles.textStyle16,
            ),
            Image.asset(
              AssetsData.testImage,
            ),
            const Text(
              '13\u00b0',
              style: Styles.textStyle18,
            ),
          ],
        ),
      ),
    );
  }
}
