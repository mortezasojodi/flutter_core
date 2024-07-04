import 'package:core/core.dart';
import 'package:flutter/material.dart';

extension AppThemExtentions on BuildContext {
  ThemeData get theme => Theme.of(this);
  AppColorsExtension get customColor =>
      Theme.of(this).extension<AppColorsExtension>()!;
  TextTheme get textTheme => Theme.of(this).textTheme;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}
