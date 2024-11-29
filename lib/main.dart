import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app/features/home/presentation/views/home_view.dart';

void main() {
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

    return const MaterialApp(

      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}

