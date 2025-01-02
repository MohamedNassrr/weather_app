import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/home/presentation/view_models/weather_cubit/weather_cubit.dart';
import 'package:weather_app/features/home/presentation/view_models/weather_cubit/weather_states.dart';
import 'package:weather_app/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<WeatherCubit>(context).getWeatherCubit(cityName: 'cairo');
    });
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
        backgroundColor: Colors.transparent,
        body: BlocBuilder<WeatherCubit, WeatherStates>(
            builder: (context, state) {
              if(state is WeatherLoadingState){
                return const Center(child: CircularProgressIndicator(),);
              }else if(state is WeatherSuccessState){
                return  HomeViewBody();
              }else {
                return const Center(child: Text('oops there is an error, try again!'));
              }
            },
        )
      ),
    );
  }
}
