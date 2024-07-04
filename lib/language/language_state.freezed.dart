// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LanguageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(LanguageType? languageType) success,
    required TResult Function(String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(LanguageType? languageType)? success,
    TResult? Function(String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(LanguageType? languageType)? success,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LanguageStateIdle value) idle,
    required TResult Function(LanguageStateSuccess value) success,
    required TResult Function(LanguageStateFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LanguageStateIdle value)? idle,
    TResult? Function(LanguageStateSuccess value)? success,
    TResult? Function(LanguageStateFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LanguageStateIdle value)? idle,
    TResult Function(LanguageStateSuccess value)? success,
    TResult Function(LanguageStateFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageStateCopyWith<$Res> {
  factory $LanguageStateCopyWith(
          LanguageState value, $Res Function(LanguageState) then) =
      _$LanguageStateCopyWithImpl<$Res, LanguageState>;
}

/// @nodoc
class _$LanguageStateCopyWithImpl<$Res, $Val extends LanguageState>
    implements $LanguageStateCopyWith<$Res> {
  _$LanguageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LanguageStateIdleImplCopyWith<$Res> {
  factory _$$LanguageStateIdleImplCopyWith(_$LanguageStateIdleImpl value,
          $Res Function(_$LanguageStateIdleImpl) then) =
      __$$LanguageStateIdleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LanguageStateIdleImplCopyWithImpl<$Res>
    extends _$LanguageStateCopyWithImpl<$Res, _$LanguageStateIdleImpl>
    implements _$$LanguageStateIdleImplCopyWith<$Res> {
  __$$LanguageStateIdleImplCopyWithImpl(_$LanguageStateIdleImpl _value,
      $Res Function(_$LanguageStateIdleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LanguageStateIdleImpl implements LanguageStateIdle {
  const _$LanguageStateIdleImpl();

  @override
  String toString() {
    return 'LanguageState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LanguageStateIdleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(LanguageType? languageType) success,
    required TResult Function(String message) failed,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(LanguageType? languageType)? success,
    TResult? Function(String message)? failed,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(LanguageType? languageType)? success,
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
    required TResult Function(LanguageStateIdle value) idle,
    required TResult Function(LanguageStateSuccess value) success,
    required TResult Function(LanguageStateFailed value) failed,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LanguageStateIdle value)? idle,
    TResult? Function(LanguageStateSuccess value)? success,
    TResult? Function(LanguageStateFailed value)? failed,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LanguageStateIdle value)? idle,
    TResult Function(LanguageStateSuccess value)? success,
    TResult Function(LanguageStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class LanguageStateIdle implements LanguageState {
  const factory LanguageStateIdle() = _$LanguageStateIdleImpl;
}

/// @nodoc
abstract class _$$LanguageStateSuccessImplCopyWith<$Res> {
  factory _$$LanguageStateSuccessImplCopyWith(_$LanguageStateSuccessImpl value,
          $Res Function(_$LanguageStateSuccessImpl) then) =
      __$$LanguageStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LanguageType? languageType});
}

/// @nodoc
class __$$LanguageStateSuccessImplCopyWithImpl<$Res>
    extends _$LanguageStateCopyWithImpl<$Res, _$LanguageStateSuccessImpl>
    implements _$$LanguageStateSuccessImplCopyWith<$Res> {
  __$$LanguageStateSuccessImplCopyWithImpl(_$LanguageStateSuccessImpl _value,
      $Res Function(_$LanguageStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageType = freezed,
  }) {
    return _then(_$LanguageStateSuccessImpl(
      languageType: freezed == languageType
          ? _value.languageType
          : languageType // ignore: cast_nullable_to_non_nullable
              as LanguageType?,
    ));
  }
}

/// @nodoc

class _$LanguageStateSuccessImpl implements LanguageStateSuccess {
  const _$LanguageStateSuccessImpl({this.languageType});

  @override
  final LanguageType? languageType;

  @override
  String toString() {
    return 'LanguageState.success(languageType: $languageType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageStateSuccessImpl &&
            (identical(other.languageType, languageType) ||
                other.languageType == languageType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, languageType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageStateSuccessImplCopyWith<_$LanguageStateSuccessImpl>
      get copyWith =>
          __$$LanguageStateSuccessImplCopyWithImpl<_$LanguageStateSuccessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(LanguageType? languageType) success,
    required TResult Function(String message) failed,
  }) {
    return success(languageType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(LanguageType? languageType)? success,
    TResult? Function(String message)? failed,
  }) {
    return success?.call(languageType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(LanguageType? languageType)? success,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(languageType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LanguageStateIdle value) idle,
    required TResult Function(LanguageStateSuccess value) success,
    required TResult Function(LanguageStateFailed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LanguageStateIdle value)? idle,
    TResult? Function(LanguageStateSuccess value)? success,
    TResult? Function(LanguageStateFailed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LanguageStateIdle value)? idle,
    TResult Function(LanguageStateSuccess value)? success,
    TResult Function(LanguageStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class LanguageStateSuccess implements LanguageState {
  const factory LanguageStateSuccess({final LanguageType? languageType}) =
      _$LanguageStateSuccessImpl;

  LanguageType? get languageType;
  @JsonKey(ignore: true)
  _$$LanguageStateSuccessImplCopyWith<_$LanguageStateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LanguageStateFailedImplCopyWith<$Res> {
  factory _$$LanguageStateFailedImplCopyWith(_$LanguageStateFailedImpl value,
          $Res Function(_$LanguageStateFailedImpl) then) =
      __$$LanguageStateFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LanguageStateFailedImplCopyWithImpl<$Res>
    extends _$LanguageStateCopyWithImpl<$Res, _$LanguageStateFailedImpl>
    implements _$$LanguageStateFailedImplCopyWith<$Res> {
  __$$LanguageStateFailedImplCopyWithImpl(_$LanguageStateFailedImpl _value,
      $Res Function(_$LanguageStateFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LanguageStateFailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LanguageStateFailedImpl implements LanguageStateFailed {
  const _$LanguageStateFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LanguageState.failed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageStateFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageStateFailedImplCopyWith<_$LanguageStateFailedImpl> get copyWith =>
      __$$LanguageStateFailedImplCopyWithImpl<_$LanguageStateFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(LanguageType? languageType) success,
    required TResult Function(String message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(LanguageType? languageType)? success,
    TResult? Function(String message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(LanguageType? languageType)? success,
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
    required TResult Function(LanguageStateIdle value) idle,
    required TResult Function(LanguageStateSuccess value) success,
    required TResult Function(LanguageStateFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LanguageStateIdle value)? idle,
    TResult? Function(LanguageStateSuccess value)? success,
    TResult? Function(LanguageStateFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LanguageStateIdle value)? idle,
    TResult Function(LanguageStateSuccess value)? success,
    TResult Function(LanguageStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class LanguageStateFailed implements LanguageState {
  const factory LanguageStateFailed(final String message) =
      _$LanguageStateFailedImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$LanguageStateFailedImplCopyWith<_$LanguageStateFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
