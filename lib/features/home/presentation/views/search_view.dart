import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/home/presentation/view_models/weather_cubit/weather_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff97ABFF),
            Color(0xff123597),
          ],
          end: Alignment.bottomRight,
          begin: Alignment.topLeft,
        ),
      ),
      child:  Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                onSubmitted: (value){
                  BlocProvider.of<WeatherCubit>(context).getWeatherCubit(cityName: value);
                  Navigator.pop(context);
                },
                decoration:  InputDecoration(
                  hintText: 'Cairo',
                  border: const InputDecoration().enabledBorder,

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
