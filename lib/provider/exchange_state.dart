import 'package:exchange_app/model/exchange_list_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_state.freezed.dart';

@freezed
class ExchangeState with _$ExchangeState {
  factory ExchangeState.data({
    required List<ExchangeListModel> exchangeList,
    required String date,
  }) = ExchangeData;

  factory ExchangeState.loading() = ExchangeLoading;
  factory ExchangeState.error(String message) = ExchangeError;

}