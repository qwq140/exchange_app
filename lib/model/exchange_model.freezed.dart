// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExchangeModel _$ExchangeModelFromJson(Map<String, dynamic> json) {
  return _ExchangeModel.fromJson(json);
}

/// @nodoc
mixin _$ExchangeModel {
  int get idx => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  List<ExchangeListModel> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExchangeModelCopyWith<ExchangeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeModelCopyWith<$Res> {
  factory $ExchangeModelCopyWith(
          ExchangeModel value, $Res Function(ExchangeModel) then) =
      _$ExchangeModelCopyWithImpl<$Res, ExchangeModel>;
  @useResult
  $Res call({int idx, DateTime date, List<ExchangeListModel> list});
}

/// @nodoc
class _$ExchangeModelCopyWithImpl<$Res, $Val extends ExchangeModel>
    implements $ExchangeModelCopyWith<$Res> {
  _$ExchangeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? date = null,
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ExchangeListModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExchangeModelCopyWith<$Res>
    implements $ExchangeModelCopyWith<$Res> {
  factory _$$_ExchangeModelCopyWith(
          _$_ExchangeModel value, $Res Function(_$_ExchangeModel) then) =
      __$$_ExchangeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int idx, DateTime date, List<ExchangeListModel> list});
}

/// @nodoc
class __$$_ExchangeModelCopyWithImpl<$Res>
    extends _$ExchangeModelCopyWithImpl<$Res, _$_ExchangeModel>
    implements _$$_ExchangeModelCopyWith<$Res> {
  __$$_ExchangeModelCopyWithImpl(
      _$_ExchangeModel _value, $Res Function(_$_ExchangeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? date = null,
    Object? list = null,
  }) {
    return _then(_$_ExchangeModel(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ExchangeListModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExchangeModel implements _ExchangeModel {
  _$_ExchangeModel(
      {required this.idx,
      required this.date,
      required final List<ExchangeListModel> list})
      : _list = list;

  factory _$_ExchangeModel.fromJson(Map<String, dynamic> json) =>
      _$$_ExchangeModelFromJson(json);

  @override
  final int idx;
  @override
  final DateTime date;
  final List<ExchangeListModel> _list;
  @override
  List<ExchangeListModel> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'ExchangeModel(idx: $idx, date: $date, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExchangeModel &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, idx, date, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExchangeModelCopyWith<_$_ExchangeModel> get copyWith =>
      __$$_ExchangeModelCopyWithImpl<_$_ExchangeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExchangeModelToJson(
      this,
    );
  }
}

abstract class _ExchangeModel implements ExchangeModel {
  factory _ExchangeModel(
      {required final int idx,
      required final DateTime date,
      required final List<ExchangeListModel> list}) = _$_ExchangeModel;

  factory _ExchangeModel.fromJson(Map<String, dynamic> json) =
      _$_ExchangeModel.fromJson;

  @override
  int get idx;
  @override
  DateTime get date;
  @override
  List<ExchangeListModel> get list;
  @override
  @JsonKey(ignore: true)
  _$$_ExchangeModelCopyWith<_$_ExchangeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
