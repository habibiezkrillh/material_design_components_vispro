import 'package:flutter/material.dart';

class AppTheme {
  static final ColorScheme colorScheme = ColorScheme(
    primary: Color(0xFFE50914),
    onPrimary: Colors.white,
    secondary: Color(0xFF00FF7F),
    onSecondary: Colors.black,
    background: Color(0xFF212121),
    onBackground: Colors.white,
    surface: Color(0xFFB0BEC5),
    onSurface: Colors.black,
    error: Colors.red,
    onError: Colors.white,
    brightness: Brightness.dark,
  );

  static ThemeData get theme {
    return ThemeData(
      colorScheme: colorScheme,
      textTheme: TextTheme(
        displayLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: colorScheme.onBackground),
        bodyLarge: TextStyle(fontSize: 16, color: colorScheme.onBackground),
      ),
    );
  }
}
