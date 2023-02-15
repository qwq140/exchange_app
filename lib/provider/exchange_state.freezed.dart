// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExchangeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ExchangeListModel> exchangeList, String date)
        data,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ExchangeListModel> exchangeList, String date)? data,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ExchangeListModel> exchangeList, String date)? data,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExchangeData value) data,
    required TResult Function(ExchangeLoading value) loading,
    required TResult Function(ExchangeError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExchangeData value)? data,
    TResult? Function(ExchangeLoading value)? loading,
    TResult? Function(ExchangeError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExchangeData value)? data,
    TResult Function(ExchangeLoading value)? loading,
    TResult Function(ExchangeError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeStateCopyWith<$Res> {
  factory $ExchangeStateCopyWith(
          ExchangeState value, $Res Function(ExchangeState) then) =
      _$ExchangeStateCopyWithImpl<$Res, ExchangeState>;
}

/// @nodoc
class _$ExchangeStateCopyWithImpl<$Res, $Val extends ExchangeState>
    implements $ExchangeStateCopyWith<$Res> {
  _$ExchangeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ExchangeDataCopyWith<$Res> {
  factory _$$ExchangeDataCopyWith(
          _$ExchangeData value, $Res Function(_$ExchangeData) then) =
      __$$ExchangeDataCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ExchangeListModel> exchangeList, String date});
}

/// @nodoc
class __$$ExchangeDataCopyWithImpl<$Res>
    extends _$ExchangeStateCopyWithImpl<$Res, _$ExchangeData>
    implements _$$ExchangeDataCopyWith<$Res> {
  __$$ExchangeDataCopyWithImpl(
      _$ExchangeData _value, $Res Function(_$ExchangeData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exchangeList = null,
    Object? date = null,
  }) {
    return _then(_$ExchangeData(
      exchangeList: null == exchangeList
          ? _value._exchangeList
          : exchangeList // ignore: cast_nullable_to_non_nullable
              as List<ExchangeListModel>,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExchangeData implements ExchangeData {
  _$ExchangeData(
      {required final List<ExchangeListModel> exchangeList, required this.date})
      : _exchangeList = exchangeList;

  final List<ExchangeListModel> _exchangeList;
  @override
  List<ExchangeListModel> get exchangeList {
    if (_exchangeList is EqualUnmodifiableListView) return _exchangeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exchangeList);
  }

  @override
  final String date;

  @override
  String toString() {
    return 'ExchangeState.data(exchangeList: $exchangeList, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExchangeData &&
            const DeepCollectionEquality()
                .equals(other._exchangeList, _exchangeList) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_exchangeList), date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExchangeDataCopyWith<_$ExchangeData> get copyWith =>
      __$$ExchangeDataCopyWithImpl<_$ExchangeData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ExchangeListModel> exchangeList, String date)
        data,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return data(exchangeList, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ExchangeListModel> exchangeList, String date)? data,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return data?.call(exchangeList, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ExchangeListModel> exchangeList, String date)? data,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(exchangeList, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExchangeData value) data,
    required TResult Function(ExchangeLoading value) loading,
    required TResult Function(ExchangeError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExchangeData value)? data,
    TResult? Function(ExchangeLoading value)? loading,
    TResult? Function(ExchangeError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExchangeData value)? data,
    TResult Function(ExchangeLoading value)? loading,
    TResult Function(ExchangeError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ExchangeData implements ExchangeState {
  factory ExchangeData(
      {required final List<ExchangeListModel> exchangeList,
      required final String date}) = _$ExchangeData;

  List<ExchangeListModel> get exchangeList;
  String get date;
  @JsonKey(ignore: true)
  _$$ExchangeDataCopyWith<_$ExchangeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExchangeLoadingCopyWith<$Res> {
  factory _$$ExchangeLoadingCopyWith(
          _$ExchangeLoading value, $Res Function(_$ExchangeLoading) then) =
      __$$ExchangeLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExchangeLoadingCopyWithImpl<$Res>
    extends _$ExchangeStateCopyWithImpl<$Res, _$ExchangeLoading>
    implements _$$ExchangeLoadingCopyWith<$Res> {
  __$$ExchangeLoadingCopyWithImpl(
      _$ExchangeLoading _value, $Res Function(_$ExchangeLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExchangeLoading implements ExchangeLoading {
  _$ExchangeLoading();

  @override
  String toString() {
    return 'ExchangeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExchangeLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ExchangeListModel> exchangeList, String date)
        data,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ExchangeListModel> exchangeList, String date)? data,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ExchangeListModel> exchangeList, String date)? data,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExchangeData value) data,
    required TResult Function(ExchangeLoading value) loading,
    required TResult Function(ExchangeError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExchangeData value)? data,
    TResult? Function(ExchangeLoading value)? loading,
    TResult? Function(ExchangeError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExchangeData value)? data,
    TResult Function(ExchangeLoading value)? loading,
    TResult Function(ExchangeError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ExchangeLoading implements ExchangeState {
  factory ExchangeLoading() = _$ExchangeLoading;
}

/// @nodoc
abstract class _$$ExchangeErrorCopyWith<$Res> {
  factory _$$ExchangeErrorCopyWith(
          _$ExchangeError value, $Res Function(_$ExchangeError) then) =
      __$$ExchangeErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ExchangeErrorCopyWithImpl<$Res>
    extends _$ExchangeStateCopyWithImpl<$Res, _$ExchangeError>
    implements _$$ExchangeErrorCopyWith<$Res> {
  __$$ExchangeErrorCopyWithImpl(
      _$ExchangeError _value, $Res Function(_$ExchangeError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ExchangeError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExchangeError implements ExchangeError {
  _$ExchangeError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ExchangeState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExchangeError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExchangeErrorCopyWith<_$ExchangeError> get copyWith =>
      __$$ExchangeErrorCopyWithImpl<_$ExchangeError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ExchangeListModel> exchangeList, String date)
        data,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ExchangeListModel> exchangeList, String date)? data,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ExchangeListModel> exchangeList, String date)? data,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExchangeData value) data,
    required TResult Function(ExchangeLoading value) loading,
    required TResult Function(ExchangeError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExchangeData value)? data,
    TResult? Function(ExchangeLoading value)? loading,
    TResult? Function(ExchangeError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExchangeData value)? data,
    TResult Function(ExchangeLoading value)? loading,
    TResult Function(ExchangeError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ExchangeError implements ExchangeState {
  factory ExchangeError(final String message) = _$ExchangeError;

  String get message;
  @JsonKey(ignore: true)
  _$$ExchangeErrorCopyWith<_$ExchangeError> get copyWith =>
      throw _privateConstructorUsedError;
}
