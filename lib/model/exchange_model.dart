import 'package:exchange_app/model/exchange_list_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_model.freezed.dart';

part 'exchange_model.g.dart';

@freezed
class ExchangeModel with _$ExchangeModel {
  factory ExchangeModel({
    required int idx,
    required DateTime date,
    required List<ExchangeListModel> list,
   }) = _ExchangeModel;

  factory ExchangeModel.fromJson(Map<String, dynamic> json) => _$ExchangeModelFromJson(json);
}