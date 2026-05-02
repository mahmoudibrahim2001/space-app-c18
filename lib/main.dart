import 'package:flutter/material.dart';
import 'package:space/core/theme/app_colors.dart';
import 'package:space/modules/home_screen.dart';
import 'package:space/modules/planet_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Space App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.red,
            foregroundColor: AppColors.white,
          ),
        ),
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: AppColors.red,
          ),
        ),
        appBarTheme: const AppBarThemeData(
          centerTitle: true,
          leadingWidth: 80,
          foregroundColor: Colors.white,
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.transparent,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 24, color: Colors.white),
          bodyMedium: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        PlanetDetails.routeName: (context) => PlanetDetails(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
