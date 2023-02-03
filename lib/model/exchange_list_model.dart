import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_list_model.freezed.dart';

part 'exchange_list_model.g.dart';

@freezed
class ExchangeListModel with _$ExchangeListModel {
  factory ExchangeListModel({
    required int idx,
    required String amount,
    required String unit,
    required String curName,
  }) = _ExchangeListModel;

  factory ExchangeListModel.fromJson(Map<String, dynamic> json) => _$ExchangeListModelFromJson(json);
}