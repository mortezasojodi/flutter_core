import 'package:flutter/material.dart';

class ThemeParams {
  static double get buttonBorderRadius => 12.0;
  static double get inputBorderRadius => 12.0;
  static String get farsiFontFamily => "IRANYekanXFaNum";
  static Size get defaultAppButtonSize => const Size(160.0, 44.0);
  static Size get largeAppButtonSize => const Size(220.0, 48.0);
  static Size get maxAppButtonSize => const Size(350.0, 48.0);
  static Size get minAppButtonSize => const Size(60.0, 40.0);
  static double get iconButtonSplashRadius => 24.0;

  static TextTheme defaultTextTheme(
      TextTheme textTheme, ColorScheme colorScheme) {
    return textTheme.copyWith(
      displayLarge: TextStyle(
          fontFamily: ThemeParams.farsiFontFamily,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: colorScheme.onBackground),
      displayMedium: TextStyle(
          fontFamily: ThemeParams.farsiFontFamily,
          fontSize: 22,
          fontWeight: FontWeight.w400,
          color: colorScheme.onBackground),
      displaySmall: TextStyle(
          fontFamily: ThemeParams.farsiFontFamily,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: colorScheme.onBackground),
      titleLarge: TextStyle(
          fontFamily: ThemeParams.farsiFontFamily,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: colorScheme.onBackground),
      titleMedium: TextStyle(
          fontFamily: ThemeParams.farsiFontFamily,
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: colorScheme.onBackground),
      titleSmall: TextStyle(
          fontFamily: ThemeParams.farsiFontFamily,
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: colorScheme.onBackground),
      bodyLarge: TextStyle(
          fontFamily: ThemeParams.farsiFontFamily,
          fontSize: 16,
          color: colorScheme.onBackground),
      bodyMedium: TextStyle(
          fontFamily: ThemeParams.farsiFontFamily,
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: colorScheme.onBackground),
      bodySmall: TextStyle(
          fontFamily: ThemeParams.farsiFontFamily,
          fontSize: 14,
          color: colorScheme.onBackground),
      labelLarge: TextStyle(
          fontFamily: ThemeParams.farsiFontFamily,
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: colorScheme.onBackground),
      labelMedium: TextStyle(
          fontFamily: ThemeParams.farsiFontFamily,
          fontSize: 12,
          color: colorScheme.onBackground),
      labelSmall: TextStyle(
          fontFamily: ThemeParams.farsiFontFamily,
          fontSize: 10,
          fontWeight: FontWeight.bold,
          letterSpacing: 0,
          color: colorScheme.onBackground),
    );
  }
}
