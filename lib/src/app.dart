import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/src/screens/weather_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.mPlus1pTextTheme(
          const TextTheme(
            bodyLarge: TextStyle(fontSize: 28.0),
            bodyMedium: TextStyle(fontSize: 24.0),
            bodySmall: TextStyle(fontSize: 18.0),
            labelLarge: TextStyle(fontSize: 16.0),
          ),
        ),
      ),
      home: const WeatherScreen(),
    );
  }
}
