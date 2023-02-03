import 'package:exchange_app/model/exchange_list_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_state.freezed.dart';

@freezed
class ExchangeState with _$ExchangeState {
  factory ExchangeState({
    required List<ExchangeListModel> exchangeList,
    required String date,
    required ExchangeListModel selectExchange,
  }) = _ExchangeState;

}