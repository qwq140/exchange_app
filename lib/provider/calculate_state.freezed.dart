// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculate_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalculateState {
  List<ExchangeListModel> get exchangeList =>
      throw _privateConstructorUsedError;
  ExchangeListModel get selectExchange => throw _privateConstructorUsedError;
  String get before => throw _privateConstructorUsedError;
  String get after => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalculateStateCopyWith<CalculateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculateStateCopyWith<$Res> {
  factory $CalculateStateCopyWith(
          CalculateState value, $Res Function(CalculateState) then) =
      _$CalculateStateCopyWithImpl<$Res, CalculateState>;
  @useResult
  $Res call(
      {List<ExchangeListModel> exchangeList,
      ExchangeListModel selectExchange,
      String before,
      String after});

  $ExchangeListModelCopyWith<$Res> get selectExchange;
}

/// @nodoc
class _$CalculateStateCopyWithImpl<$Res, $Val extends CalculateState>
    implements $CalculateStateCopyWith<$Res> {
  _$CalculateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exchangeList = null,
    Object? selectExchange = null,
    Object? before = null,
    Object? after = null,
  }) {
    return _then(_value.copyWith(
      exchangeList: null == exchangeList
          ? _value.exchangeList
          : exchangeList // ignore: cast_nullable_to_non_nullable
              as List<ExchangeListModel>,
      selectExchange: null == selectExchange
          ? _value.selectExchange
          : selectExchange // ignore: cast_nullable_to_non_nullable
              as ExchangeListModel,
      before: null == before
          ? _value.before
          : before // ignore: cast_nullable_to_non_nullable
              as String,
      after: null == after
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_CalculateStateCopyWith<$Res>
    implements $CalculateStateCopyWith<$Res> {
  factory _$$_CalculateStateCopyWith(
          _$_CalculateState value, $Res Function(_$_CalculateState) then) =
      __$$_CalculateStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ExchangeListModel> exchangeList,
      ExchangeListModel selectExchange,
      String before,
      String after});

  @override
  $ExchangeListModelCopyWith<$Res> get selectExchange;
}

/// @nodoc
class __$$_CalculateStateCopyWithImpl<$Res>
    extends _$CalculateStateCopyWithImpl<$Res, _$_CalculateState>
    implements _$$_CalculateStateCopyWith<$Res> {
  __$$_CalculateStateCopyWithImpl(
      _$_CalculateState _value, $Res Function(_$_CalculateState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exchangeList = null,
    Object? selectExchange = null,
    Object? before = null,
    Object? after = null,
  }) {
    return _then(_$_CalculateState(
      exchangeList: null == exchangeList
          ? _value._exchangeList
          : exchangeList // ignore: cast_nullable_to_non_nullable
              as List<ExchangeListModel>,
      selectExchange: null == selectExchange
          ? _value.selectExchange
          : selectExchange // ignore: cast_nullable_to_non_nullable
              as ExchangeListModel,
      before: null == before
          ? _value.before
          : before // ignore: cast_nullable_to_non_nullable
              as String,
      after: null == after
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CalculateState implements _CalculateState {
  _$_CalculateState(
      {required final List<ExchangeListModel> exchangeList,
      required this.selectExchange,
      required this.before,
      required this.after})
      : _exchangeList = exchangeList;

  final List<ExchangeListModel> _exchangeList;
  @override
  List<ExchangeListModel> get exchangeList {
    if (_exchangeList is EqualUnmodifiableListView) return _exchangeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exchangeList);
  }

  @override
  final ExchangeListModel selectExchange;
  @override
  final String before;
  @override
  final String after;

  @override
  String toString() {
    return 'CalculateState(exchangeList: $exchangeList, selectExchange: $selectExchange, before: $before, after: $after)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalculateState &&
            const DeepCollectionEquality()
                .equals(other._exchangeList, _exchangeList) &&
            (identical(other.selectExchange, selectExchange) ||
                other.selectExchange == selectExchange) &&
            (identical(other.before, before) || other.before == before) &&
            (identical(other.after, after) || other.after == after));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_exchangeList),
      selectExchange,
      before,
      after);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalculateStateCopyWith<_$_CalculateState> get copyWith =>
      __$$_CalculateStateCopyWithImpl<_$_CalculateState>(this, _$identity);
}

abstract class _CalculateState implements CalculateState {
  factory _CalculateState(
      {required final List<ExchangeListModel> exchangeList,
      required final ExchangeListModel selectExchange,
      required final String before,
      required final String after}) = _$_CalculateState;

  @override
  List<ExchangeListModel> get exchangeList;
  @override
  ExchangeListModel get selectExchange;
  @override
  String get before;
  @override
  String get after;
  @override
  @JsonKey(ignore: true)
  _$$_CalculateStateCopyWith<_$_CalculateState> get copyWith =>
      throw _privateConstructorUsedError;
}
