import 'package:exchange_app/model/exchange_list_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calculate_state.freezed.dart';

@freezed
class CalculateState with _$CalculateState {
  factory CalculateState({
    required List<ExchangeListModel> exchangeList,
    required ExchangeListModel selectExchange,
    required double rate,
    required String before,
    required String after,
  }) = _CalculateState;
}