// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExchangeListModel _$$_ExchangeListModelFromJson(Map<String, dynamic> json) =>
    _$_ExchangeListModel(
      idx: json['idx'] as int,
      amount: json['amount'] as String,
      unit: json['unit'] as String,
      curName: json['curName'] as String,
    );

Map<String, dynamic> _$$_ExchangeListModelToJson(
        _$_ExchangeListModel instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'amount': instance.amount,
      'unit': instance.unit,
      'curName': instance.curName,
    };
