import 'package:core/language/language_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';

enum LanguageType { fa, en }

class LanguageCubit extends Cubit<LanguageState> {
  Locale? _locale;
  LanguageType? _languageType;

  Locale? get locale => _locale;

  LanguageCubit() : super(const LanguageState.idle()) {
    _locale = Locale(LanguageType.fa.name);
    _languageType = LanguageType.fa;
  }

  void changeLanguage({LanguageType? manualSelectLanguageType}) {
    if (manualSelectLanguageType != null) {
      _languageType = manualSelectLanguageType;
    } else {
      _languageType = LanguageType.values
          .where((element) => element.name != _languageType!.name)
          .first;
    }
    switch (_languageType) {
      case LanguageType.en:
        _locale = Locale(LanguageType.en.name);
        break;
      case LanguageType.fa:
        _locale = Locale(LanguageType.fa.name);
        break;
      default:
        _locale = Locale(LanguageType.fa.name);
        break;
    }
    emit(LanguageState.success(languageType: _languageType));
  }
}
