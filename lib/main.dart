import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space/core/theme/app_colors.dart';
import 'package:space/core/theme/app_theme.dart';
import 'package:space/modules/home_screen.dart';
import 'package:space/modules/planet_details.dart';
import 'package:space/modules/welcome_screen.dart';

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
      theme: AppTheme.themeData,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        PlanetDetails.routeName: (context) => PlanetDetails(),
        WelcomeScreen.routeName: (context) => const WelcomeScreen(),
      },
      initialRoute: WelcomeScreen.routeName,
    );
  }
}
