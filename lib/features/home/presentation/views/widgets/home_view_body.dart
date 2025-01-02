import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/utils/app_style.dart';
import 'package:weather_app/core/utils/assets_data.dart';
import 'package:weather_app/features/home/presentation/view_models/weather_cubit/weather_cubit.dart';
import 'package:weather_app/features/home/presentation/views/search_view.dart';
import 'package:weather_app/features/home/presentation/views/widgets/daily_weather_list_view.dart';
import 'package:weather_app/features/home/presentation/views/widgets/temp_details.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});


  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<WeatherCubit>(context).weatherModel;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchView(),
                  ));
            },
            child:  Text(
              weatherModel.cityName,
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
        const SizedBox(
          height: 24,
        ),
        const DailyWeatherListView(),
      ],
    );
  }
}
