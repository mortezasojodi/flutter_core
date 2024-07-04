import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:core/theme/theme_type.dart';

part 'theme_state.freezed.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.idle() = ThemeStateIdle;
  const factory ThemeState.success({ThemeType? themeType}) = ThemeStateSuccess;
  const factory ThemeState.failed(String message) = ThemeStateFailed;
}
