import 'package:flutter/material.dart';

class AppColorsExtension extends ThemeExtension<AppColorsExtension> {
  AppColorsExtension({
    required this.grey2,
    required this.grey3,
    required this.grey4,
    required this.grey5,
    required this.grey6,
    required this.bluetheme3,
    required this.colorBackground,
    required this.lightBlue,
    required this.success,
    required this.grey1,
    required this.errorColor,
  });

  final Color grey1;
  final Color grey2;
  final Color grey3;
  final Color grey4;
  final Color grey5;
  final Color grey6;
  final Color bluetheme3;
  final Color colorBackground;
  final Color lightBlue;
  final Color success;
  final Color errorColor;

  @override
  ThemeExtension<AppColorsExtension> copyWith({
    Color? grey1,
    Color? grey2,
    Color? grey3,
    Color? grey4,
    Color? grey5,
    Color? grey6,
    Color? bluetheme3,
    Color? colorBackground,
    Color? lightBlue,
    Color? success,
    Color? errorColor,
  }) {
    return AppColorsExtension(
      grey1: grey1 ?? this.grey1,
      grey2: grey2 ?? this.grey2,
      grey3: grey3 ?? this.grey3,
      grey4: grey4 ?? this.grey4,
      grey5: grey5 ?? this.grey5,
      grey6: grey6 ?? this.grey6,
      errorColor: errorColor ?? this.errorColor,
      bluetheme3: bluetheme3 ?? this.bluetheme3,
      colorBackground: colorBackground ?? this.colorBackground,
      lightBlue: lightBlue ?? this.lightBlue,
      success: success ?? this.success,
    );
  }

  @override
  ThemeExtension<AppColorsExtension> lerp(
    covariant ThemeExtension<AppColorsExtension>? other,
    double t,
  ) {
    if (other is! AppColorsExtension) {
      return this;
    }

    return AppColorsExtension(
      errorColor: Color.lerp(errorColor, other.errorColor, t)!,
      grey1: Color.lerp(grey1, other.grey1, t)!,
      grey2: Color.lerp(grey2, other.grey2, t)!,
      grey3: Color.lerp(grey3, other.grey3, t)!,
      grey4: Color.lerp(grey4, other.grey4, t)!,
      grey5: Color.lerp(grey5, other.grey5, t)!,
      grey6: Color.lerp(grey6, other.grey6, t)!,
      bluetheme3: Color.lerp(bluetheme3, other.bluetheme3, t)!,
      colorBackground: Color.lerp(colorBackground, other.colorBackground, t)!,
      lightBlue: Color.lerp(lightBlue, other.lightBlue, t)!,
      success: Color.lerp(success, other.success, t)!,
    );
  }
}
