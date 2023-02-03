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
  List<ExchangeListModel> get exchangeList =>
      throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  ExchangeListModel get selectExchange => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExchangeStateCopyWith<ExchangeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeStateCopyWith<$Res> {
  factory $ExchangeStateCopyWith(
          ExchangeState value, $Res Function(ExchangeState) then) =
      _$ExchangeStateCopyWithImpl<$Res, ExchangeState>;
  @useResult
  $Res call(
      {List<ExchangeListModel> exchangeList,
      String date,
      ExchangeListModel selectExchange});

  $ExchangeListModelCopyWith<$Res> get selectExchange;
}

/// @nodoc
class _$ExchangeStateCopyWithImpl<$Res, $Val extends ExchangeState>
    implements $ExchangeStateCopyWith<$Res> {
  _$ExchangeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exchangeList = null,
    Object? date = null,
    Object? selectExchange = null,
  }) {
    return _then(_value.copyWith(
      exchangeList: null == exchangeList
          ? _value.exchangeList
          : exchangeList // ignore: cast_nullable_to_non_nullable
              as List<ExchangeListModel>,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      selectExchange: null == selectExchange
          ? _value.selectExchange
          : selectExchange // ignore: cast_nullable_to_non_nullable
              as ExchangeListModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExchangeListModelCopyWith<$Res> get selectExchange {
    return $ExchangeListModelCopyWith<$Res>(_value.selectExchange, (value) {
      return _then(_value.copyWith(selectExchange: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ExchangeStateCopyWith<$Res>
    implements $ExchangeStateCopyWith<$Res> {
  factory _$$_ExchangeStateCopyWith(
          _$_ExchangeState value, $Res Function(_$_ExchangeState) then) =
      __$$_ExchangeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ExchangeListModel> exchangeList,
      String date,
      ExchangeListModel selectExchange});

  @override
  $ExchangeListModelCopyWith<$Res> get selectExchange;
}

/// @nodoc
class __$$_ExchangeStateCopyWithImpl<$Res>
    extends _$ExchangeStateCopyWithImpl<$Res, _$_ExchangeState>
    implements _$$_ExchangeStateCopyWith<$Res> {
  __$$_ExchangeStateCopyWithImpl(
      _$_ExchangeState _value, $Res Function(_$_ExchangeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exchangeList = null,
    Object? date = null,
    Object? selectExchange = null,
  }) {
    return _then(_$_ExchangeState(
      exchangeList: null == exchangeList
          ? _value._exchangeList
          : exchangeList // ignore: cast_nullable_to_non_nullable
              as List<ExchangeListModel>,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      selectExchange: null == selectExchange
          ? _value.selectExchange
          : selectExchange // ignore: cast_nullable_to_non_nullable
              as ExchangeListModel,
    ));
  }
}

/// @nodoc

class _$_ExchangeState implements _ExchangeState {
  _$_ExchangeState(
      {required final List<ExchangeListModel> exchangeList,
      required this.date,
      required this.selectExchange})
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
  final ExchangeListModel selectExchange;

  @override
  String toString() {
    return 'ExchangeState(exchangeList: $exchangeList, date: $date, selectExchange: $selectExchange)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExchangeState &&
            const DeepCollectionEquality()
                .equals(other._exchangeList, _exchangeList) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.selectExchange, selectExchange) ||
                other.selectExchange == selectExchange));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_exchangeList), date, selectExchange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExchangeStateCopyWith<_$_ExchangeState> get copyWith =>
      __$$_ExchangeStateCopyWithImpl<_$_ExchangeState>(this, _$identity);
}

abstract class _ExchangeState implements ExchangeState {
  factory _ExchangeState(
      {required final List<ExchangeListModel> exchangeList,
      required final String date,
      required final ExchangeListModel selectExchange}) = _$_ExchangeState;

  @override
  List<ExchangeListModel> get exchangeList;
  @override
  String get date;
  @override
  ExchangeListModel get selectExchange;
  @override
  @JsonKey(ignore: true)
  _$$_ExchangeStateCopyWith<_$_ExchangeState> get copyWith =>
      throw _privateConstructorUsedError;
}
