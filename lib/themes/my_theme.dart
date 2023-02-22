import 'package:alurabank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

ThemeData myTheme = ThemeData(
  primaryColor: ThemeColors.primaryColor,
  primarySwatch: ThemeColors.primaryColor,
  brightness: Brightness.dark,
  textTheme: const TextTheme(
      bodyMedium: TextStyle(fontSize: 16),
      bodyLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
      titleMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
);
