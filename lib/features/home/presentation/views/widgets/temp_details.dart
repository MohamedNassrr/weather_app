import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/core/utils/app_style.dart';
import 'package:weather_app/core/utils/assets_data.dart';
import 'package:weather_app/features/home/presentation/view_models/weather_cubit/weather_cubit.dart';

class TempDetails extends StatelessWidget {
  const TempDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<WeatherCubit>(context).weatherModel;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AssetsData.testImage,
              scale: 2,
            ),
            const SizedBox(
              width: 27,
            ),
             Text(
              '${weatherModel.temp}\u00b0',
              style: const TextStyle(
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
              '${weatherModel.weatherCondition} - ',
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
