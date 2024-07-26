import 'package:flutter/material.dart';

class DoDidDoneTheme {
  static ThemeData lightTheme = ThemeData(
    // Используем два основных цвета
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF9F7BF6), // Основной цвет
      primary: const Color(0xFF4ceb8b), // Вторичный цвет
    ),
    useMaterial3: true,
  );
}
