import 'package:flutter/material.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/core/utils/app_style.dart';
import 'package:weather_app/core/utils/assets_data.dart';

class TempDetails extends StatelessWidget {
  const TempDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AssetsData.testImage,
            ),
            const SizedBox(
              width: 27,
            ),
            const Text(
              '13\u00b0',
              style: TextStyle(
                fontFamily: circular,
                fontSize: 122.71,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Partly Cloud - ',
              style: Styles.textStyle18.copyWith(
                fontFamily: circular,
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              'H: 17\u00b0 ',
              style: Styles.textStyle18.copyWith(
                fontFamily: circular,
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              'L: 4\u00b0 ',
              style: Styles.textStyle18.copyWith(
                fontFamily: circular,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
