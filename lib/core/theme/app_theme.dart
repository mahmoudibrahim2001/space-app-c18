import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space/core/theme/app_colors.dart';

class AppTheme {
  static ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 60),
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
    textTheme: TextTheme(
      displayLarge: GoogleFonts.inter(
        fontSize: 48,
        fontWeight: .w900,
        color: Colors.white,
      ),
      displaySmall: GoogleFonts.inter(
        fontSize: 20,
        fontWeight: .w400,
        color: Colors.white,
      ),
      bodyLarge: GoogleFonts.inter(fontSize: 24, color: Colors.white),
      bodyMedium: GoogleFonts.spaceGrotesk(
        fontSize: 20,
        fontWeight: .w400,
        color: Colors.white,
      ),
    ),
  );
}
