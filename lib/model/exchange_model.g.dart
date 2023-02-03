// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExchangeModel _$$_ExchangeModelFromJson(Map<String, dynamic> json) =>
    _$_ExchangeModel(
      idx: json['idx'] as int,
      date: DateTime.parse(json['date'] as String),
      list: (json['list'] as List<dynamic>)
          .map((e) => ExchangeListModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ExchangeModelToJson(_$_ExchangeModel instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'date': instance.date.toIso8601String(),
      'list': instance.list,
    };
