// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Result<T> {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data, String? message) success,
    required TResult Function(
            T contents, String? message, Pagination? pagination)
        successPaginatedResponse,
    required TResult Function(String? error, String? message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data, String? message)? success,
    TResult? Function(T contents, String? message, Pagination? pagination)?
        successPaginatedResponse,
    TResult? Function(String? error, String? message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data, String? message)? success,
    TResult Function(T contents, String? message, Pagination? pagination)?
        successPaginatedResponse,
    TResult Function(String? error, String? message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T> value) success,
    required TResult Function(successPaginatedResponse<T> value)
        successPaginatedResponse,
    required TResult Function(Failures<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<T> value)? success,
    TResult? Function(successPaginatedResponse<T> value)?
        successPaginatedResponse,
    TResult? Function(Failures<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T> value)? success,
    TResult Function(successPaginatedResponse<T> value)?
        successPaginatedResponse,
    TResult Function(Failures<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResultCopyWith<T, Result<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<T, $Res> {
  factory $ResultCopyWith(Result<T> value, $Res Function(Result<T>) then) =
      _$ResultCopyWithImpl<T, $Res, Result<T>>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$ResultCopyWithImpl<T, $Res, $Val extends Result<T>>
    implements $ResultCopyWith<T, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<T, $Res>
    implements $ResultCopyWith<T, $Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl<T> value, $Res Function(_$SuccessImpl<T>) then) =
      __$$SuccessImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T data, String? message});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$SuccessImpl<T>>
    implements _$$SuccessImplCopyWith<T, $Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl<T> _value, $Res Function(_$SuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_$SuccessImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SuccessImpl<T> implements Success<T> {
  const _$SuccessImpl({required this.data, this.message});

  @override
  final T data;
  @override
  final String? message;

  @override
  String toString() {
    return 'Result<$T>.success(data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<T, _$SuccessImpl<T>> get copyWith =>
      __$$SuccessImplCopyWithImpl<T, _$SuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data, String? message) success,
    required TResult Function(
            T contents, String? message, Pagination? pagination)
        successPaginatedResponse,
    required TResult Function(String? error, String? message) failure,
  }) {
    return success(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data, String? message)? success,
    TResult? Function(T contents, String? message, Pagination? pagination)?
        successPaginatedResponse,
    TResult? Function(String? error, String? message)? failure,
  }) {
    return success?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data, String? message)? success,
    TResult Function(T contents, String? message, Pagination? pagination)?
        successPaginatedResponse,
    TResult Function(String? error, String? message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T> value) success,
    required TResult Function(successPaginatedResponse<T> value)
        successPaginatedResponse,
    required TResult Function(Failures<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<T> value)? success,
    TResult? Function(successPaginatedResponse<T> value)?
        successPaginatedResponse,
    TResult? Function(Failures<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T> value)? success,
    TResult Function(successPaginatedResponse<T> value)?
        successPaginatedResponse,
    TResult Function(Failures<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<T> implements Result<T> {
  const factory Success({required final T data, final String? message}) =
      _$SuccessImpl<T>;

  T get data;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<T, _$SuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$successPaginatedResponseImplCopyWith<T, $Res>
    implements $ResultCopyWith<T, $Res> {
  factory _$$successPaginatedResponseImplCopyWith(
          _$successPaginatedResponseImpl<T> value,
          $Res Function(_$successPaginatedResponseImpl<T>) then) =
      __$$successPaginatedResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T contents, String? message, Pagination? pagination});
}

/// @nodoc
class __$$successPaginatedResponseImplCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$successPaginatedResponseImpl<T>>
    implements _$$successPaginatedResponseImplCopyWith<T, $Res> {
  __$$successPaginatedResponseImplCopyWithImpl(
      _$successPaginatedResponseImpl<T> _value,
      $Res Function(_$successPaginatedResponseImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contents = freezed,
    Object? message = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$successPaginatedResponseImpl<T>(
      contents: freezed == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as T,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ));
  }
}

/// @nodoc

class _$successPaginatedResponseImpl<T> implements successPaginatedResponse<T> {
  const _$successPaginatedResponseImpl(
      {required this.contents, this.message, this.pagination});

  @override
  final T contents;
  @override
  final String? message;
  @override
  final Pagination? pagination;

  @override
  String toString() {
    return 'Result<$T>.successPaginatedResponse(contents: $contents, message: $message, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$successPaginatedResponseImpl<T> &&
            const DeepCollectionEquality().equals(other.contents, contents) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(contents), message, pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$successPaginatedResponseImplCopyWith<T, _$successPaginatedResponseImpl<T>>
      get copyWith => __$$successPaginatedResponseImplCopyWithImpl<T,
          _$successPaginatedResponseImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data, String? message) success,
    required TResult Function(
            T contents, String? message, Pagination? pagination)
        successPaginatedResponse,
    required TResult Function(String? error, String? message) failure,
  }) {
    return successPaginatedResponse(contents, message, pagination);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data, String? message)? success,
    TResult? Function(T contents, String? message, Pagination? pagination)?
        successPaginatedResponse,
    TResult? Function(String? error, String? message)? failure,
  }) {
    return successPaginatedResponse?.call(contents, message, pagination);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data, String? message)? success,
    TResult Function(T contents, String? message, Pagination? pagination)?
        successPaginatedResponse,
    TResult Function(String? error, String? message)? failure,
    required TResult orElse(),
  }) {
    if (successPaginatedResponse != null) {
      return successPaginatedResponse(contents, message, pagination);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T> value) success,
    required TResult Function(successPaginatedResponse<T> value)
        successPaginatedResponse,
    required TResult Function(Failures<T> value) failure,
  }) {
    return successPaginatedResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<T> value)? success,
    TResult? Function(successPaginatedResponse<T> value)?
        successPaginatedResponse,
    TResult? Function(Failures<T> value)? failure,
  }) {
    return successPaginatedResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T> value)? success,
    TResult Function(successPaginatedResponse<T> value)?
        successPaginatedResponse,
    TResult Function(Failures<T> value)? failure,
    required TResult orElse(),
  }) {
    if (successPaginatedResponse != null) {
      return successPaginatedResponse(this);
    }
    return orElse();
  }
}

abstract class successPaginatedResponse<T> implements Result<T> {
  const factory successPaginatedResponse(
      {required final T contents,
      final String? message,
      final Pagination? pagination}) = _$successPaginatedResponseImpl<T>;

  T get contents;
  @override
  String? get message;
  Pagination? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$successPaginatedResponseImplCopyWith<T, _$successPaginatedResponseImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailuresImplCopyWith<T, $Res>
    implements $ResultCopyWith<T, $Res> {
  factory _$$FailuresImplCopyWith(
          _$FailuresImpl<T> value, $Res Function(_$FailuresImpl<T>) then) =
      __$$FailuresImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String? error, String? message});
}

/// @nodoc
class __$$FailuresImplCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$FailuresImpl<T>>
    implements _$$FailuresImplCopyWith<T, $Res> {
  __$$FailuresImplCopyWithImpl(
      _$FailuresImpl<T> _value, $Res Function(_$FailuresImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? message = freezed,
  }) {
    return _then(_$FailuresImpl<T>(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FailuresImpl<T> implements Failures<T> {
  const _$FailuresImpl({this.error, this.message});

  @override
  final String? error;
  @override
  final String? message;

  @override
  String toString() {
    return 'Result<$T>.failure(error: $error, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailuresImpl<T> &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailuresImplCopyWith<T, _$FailuresImpl<T>> get copyWith =>
      __$$FailuresImplCopyWithImpl<T, _$FailuresImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data, String? message) success,
    required TResult Function(
            T contents, String? message, Pagination? pagination)
        successPaginatedResponse,
    required TResult Function(String? error, String? message) failure,
  }) {
    return failure(error, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data, String? message)? success,
    TResult? Function(T contents, String? message, Pagination? pagination)?
        successPaginatedResponse,
    TResult? Function(String? error, String? message)? failure,
  }) {
    return failure?.call(error, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data, String? message)? success,
    TResult Function(T contents, String? message, Pagination? pagination)?
        successPaginatedResponse,
    TResult Function(String? error, String? message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T> value) success,
    required TResult Function(successPaginatedResponse<T> value)
        successPaginatedResponse,
    required TResult Function(Failures<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<T> value)? success,
    TResult? Function(successPaginatedResponse<T> value)?
        successPaginatedResponse,
    TResult? Function(Failures<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T> value)? success,
    TResult Function(successPaginatedResponse<T> value)?
        successPaginatedResponse,
    TResult Function(Failures<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failures<T> implements Result<T> {
  const factory Failures({final String? error, final String? message}) =
      _$FailuresImpl<T>;

  String? get error;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$FailuresImplCopyWith<T, _$FailuresImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
