import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static const Color secondColor = Color(0xFFEFEBE6);
  static const Map<int, Color> _primarySwatch = {
    50: Color(0xFFFFFFFF),
    100: Color(0xFFE6E6E6),
    200: Color(0xFFD2D2D2),
    300: Color(0xFFB4B4B4),
    400: Color(0xFF969696),
    500: Color(0xFF787878),
    600: Color(0xFF5A5A5A),
    700: Color(0xFF3C3C3C),
    800: Color(0xFF1E1E1E),
    900: Color(0xFF000000),
  };

  static ThemeData theme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: MaterialColor(_primarySwatch[400]!.value, _primarySwatch),
    scaffoldBackgroundColor: Colors.blue,
    primaryIconTheme: const IconThemeData(color: secondColor),
  );
}
