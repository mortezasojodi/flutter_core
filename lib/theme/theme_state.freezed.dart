// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ThemeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(ThemeType? themeType) success,
    required TResult Function(String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(ThemeType? themeType)? success,
    TResult? Function(String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(ThemeType? themeType)? success,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeStateIdle value) idle,
    required TResult Function(ThemeStateSuccess value) success,
    required TResult Function(ThemeStateFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeStateIdle value)? idle,
    TResult? Function(ThemeStateSuccess value)? success,
    TResult? Function(ThemeStateFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeStateIdle value)? idle,
    TResult Function(ThemeStateSuccess value)? success,
    TResult Function(ThemeStateFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res, ThemeState>;
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res, $Val extends ThemeState>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ThemeStateIdleImplCopyWith<$Res> {
  factory _$$ThemeStateIdleImplCopyWith(_$ThemeStateIdleImpl value,
          $Res Function(_$ThemeStateIdleImpl) then) =
      __$$ThemeStateIdleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ThemeStateIdleImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$ThemeStateIdleImpl>
    implements _$$ThemeStateIdleImplCopyWith<$Res> {
  __$$ThemeStateIdleImplCopyWithImpl(
      _$ThemeStateIdleImpl _value, $Res Function(_$ThemeStateIdleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ThemeStateIdleImpl implements ThemeStateIdle {
  const _$ThemeStateIdleImpl();

  @override
  String toString() {
    return 'ThemeState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ThemeStateIdleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(ThemeType? themeType) success,
    required TResult Function(String message) failed,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(ThemeType? themeType)? success,
    TResult? Function(String message)? failed,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(ThemeType? themeType)? success,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeStateIdle value) idle,
    required TResult Function(ThemeStateSuccess value) success,
    required TResult Function(ThemeStateFailed value) failed,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeStateIdle value)? idle,
    TResult? Function(ThemeStateSuccess value)? success,
    TResult? Function(ThemeStateFailed value)? failed,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeStateIdle value)? idle,
    TResult Function(ThemeStateSuccess value)? success,
    TResult Function(ThemeStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class ThemeStateIdle implements ThemeState {
  const factory ThemeStateIdle() = _$ThemeStateIdleImpl;
}

/// @nodoc
abstract class _$$ThemeStateSuccessImplCopyWith<$Res> {
  factory _$$ThemeStateSuccessImplCopyWith(_$ThemeStateSuccessImpl value,
          $Res Function(_$ThemeStateSuccessImpl) then) =
      __$$ThemeStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ThemeType? themeType});
}

/// @nodoc
class __$$ThemeStateSuccessImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$ThemeStateSuccessImpl>
    implements _$$ThemeStateSuccessImplCopyWith<$Res> {
  __$$ThemeStateSuccessImplCopyWithImpl(_$ThemeStateSuccessImpl _value,
      $Res Function(_$ThemeStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeType = freezed,
  }) {
    return _then(_$ThemeStateSuccessImpl(
      themeType: freezed == themeType
          ? _value.themeType
          : themeType // ignore: cast_nullable_to_non_nullable
              as ThemeType?,
    ));
  }
}

/// @nodoc

class _$ThemeStateSuccessImpl implements ThemeStateSuccess {
  const _$ThemeStateSuccessImpl({this.themeType});

  @override
  final ThemeType? themeType;

  @override
  String toString() {
    return 'ThemeState.success(themeType: $themeType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeStateSuccessImpl &&
            (identical(other.themeType, themeType) ||
                other.themeType == themeType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeStateSuccessImplCopyWith<_$ThemeStateSuccessImpl> get copyWith =>
      __$$ThemeStateSuccessImplCopyWithImpl<_$ThemeStateSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(ThemeType? themeType) success,
    required TResult Function(String message) failed,
  }) {
    return success(themeType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(ThemeType? themeType)? success,
    TResult? Function(String message)? failed,
  }) {
    return success?.call(themeType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(ThemeType? themeType)? success,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(themeType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeStateIdle value) idle,
    required TResult Function(ThemeStateSuccess value) success,
    required TResult Function(ThemeStateFailed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeStateIdle value)? idle,
    TResult? Function(ThemeStateSuccess value)? success,
    TResult? Function(ThemeStateFailed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeStateIdle value)? idle,
    TResult Function(ThemeStateSuccess value)? success,
    TResult Function(ThemeStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ThemeStateSuccess implements ThemeState {
  const factory ThemeStateSuccess({final ThemeType? themeType}) =
      _$ThemeStateSuccessImpl;

  ThemeType? get themeType;
  @JsonKey(ignore: true)
  _$$ThemeStateSuccessImplCopyWith<_$ThemeStateSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ThemeStateFailedImplCopyWith<$Res> {
  factory _$$ThemeStateFailedImplCopyWith(_$ThemeStateFailedImpl value,
          $Res Function(_$ThemeStateFailedImpl) then) =
      __$$ThemeStateFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ThemeStateFailedImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$ThemeStateFailedImpl>
    implements _$$ThemeStateFailedImplCopyWith<$Res> {
  __$$ThemeStateFailedImplCopyWithImpl(_$ThemeStateFailedImpl _value,
      $Res Function(_$ThemeStateFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ThemeStateFailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ThemeStateFailedImpl implements ThemeStateFailed {
  const _$ThemeStateFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ThemeState.failed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeStateFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeStateFailedImplCopyWith<_$ThemeStateFailedImpl> get copyWith =>
      __$$ThemeStateFailedImplCopyWithImpl<_$ThemeStateFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(ThemeType? themeType) success,
    required TResult Function(String message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(ThemeType? themeType)? success,
    TResult? Function(String message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(ThemeType? themeType)? success,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeStateIdle value) idle,
    required TResult Function(ThemeStateSuccess value) success,
    required TResult Function(ThemeStateFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeStateIdle value)? idle,
    TResult? Function(ThemeStateSuccess value)? success,
    TResult? Function(ThemeStateFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeStateIdle value)? idle,
    TResult Function(ThemeStateSuccess value)? success,
    TResult Function(ThemeStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class ThemeStateFailed implements ThemeState {
  const factory ThemeStateFailed(final String message) = _$ThemeStateFailedImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ThemeStateFailedImplCopyWith<_$ThemeStateFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
