import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:core/theme/theme_state.dart';
import 'package:core/theme/theme_type.dart';
import 'package:flutter/material.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeData? _themeData;
  ThemeType? _themeType;
  ThemeData? _themeDataLight;
  ThemeData? _themeDataDark;
  ThemeData? get themeData => _themeData;

  ThemeCubit(this._themeDataLight, this._themeDataDark)
      : super(const ThemeState.idle()) {
    _themeData = _themeDataLight;
    _themeType = ThemeType.light;
  }

  void changeTheme(
      {ThemeType? manualSelectThemeType, required BuildContext context}) {
    if (manualSelectThemeType != null) {
      _themeType = manualSelectThemeType;
    } else {
      _themeType = ThemeType.values
          .where((element) => element.name != _themeType!.name)
          .first;
    }
    switch (_themeType!) {
      case ThemeType.dark:
        _themeData = _themeDataDark;
        break;
      case ThemeType.light:
        _themeData = _themeDataLight;
        break;
    }

    emit(ThemeState.success(themeType: _themeType));
  }
}
