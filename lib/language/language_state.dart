import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:core/language/language_cubit.dart';

part 'language_state.freezed.dart';

@freezed
class LanguageState with _$LanguageState {
  const factory LanguageState.idle() = LanguageStateIdle;
  const factory LanguageState.success({LanguageType? languageType}) =
      LanguageStateSuccess;
  const factory LanguageState.failed(String message) = LanguageStateFailed;
}
