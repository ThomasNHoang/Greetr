import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Helper function to convert HSL color to Color
Color hslToColor(double h, double s, double l) {
  return HSLColor.fromAHSL(1.0, h, s / 100, l / 100).toColor();
}

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: GoogleFonts.inter().fontFamily,
  scaffoldBackgroundColor: hslToColor(0, 0, 100),
  textTheme: TextTheme(
    bodyMedium: TextStyle(color: hslToColor(222.2, 84, 4.9)),
  ),
  colorScheme: ColorScheme.light(
    primary: hslToColor(222.2, 47.4, 11.2),
    secondary: hslToColor(210, 40, 96.1),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  fontFamily: GoogleFonts.inter().fontFamily,
  scaffoldBackgroundColor: hslToColor(222.2, 84, 4.9),
  textTheme: TextTheme(
    bodyMedium: TextStyle(color: hslToColor(210, 40, 98)),
  ),
  colorScheme: ColorScheme.dark(
    primary: hslToColor(210, 40, 98),
    secondary: hslToColor(217.2, 32.6, 17.5),
  ),
);
