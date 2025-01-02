import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/utils/bloc_observer.dart';
import 'package:weather_app/features/home/presentation/view_models/weather_cubit/weather_cubit.dart';
import 'package:weather_app/features/home/presentation/views/home_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        // Set status bar color to white
        statusBarIconBrightness: Brightness.light,
        // Set icon brightness to dark for visibility
      ),
    );

    return BlocProvider(
      create: (BuildContext context) => WeatherCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
}

