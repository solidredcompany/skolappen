import 'package:flutter/material.dart';

const fallbackSeedColor = Color(0xFFD28500);

/// Use a [ColorScheme] to create a [ThemeData] instance.
/// 
/// The method creates a new [ThemeData] and applies the provided [ColorScheme]
/// as well as some other custom styles.
ThemeData themeFromColorScheme(ColorScheme colorScheme) {
  return ThemeData.from(colorScheme: colorScheme).copyWith(
    useMaterial3: true,
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
  );
}
