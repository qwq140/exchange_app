import 'package:exchange_app/model/exchange_list_model.dart';
import 'package:exchange_app/provider/exchange_state.dart';
import 'package:exchange_app/repository/exchange_repository.dart';
import 'package:exchange_app/utils/date_util.dart';
import 'package:flutter/material.dart';

class ExchangeProvider extends ChangeNotifier {
  final ExchangeRepository repository;

  ExchangeState _state = ExchangeState(exchangeList: [], date: '',);

  ExchangeState get state => _state;

  ExchangeProvider({required this.repository}){
    getExchangeList();
  }

  void getExchangeList() async {
    final resp = await repository.getExchangeList();
    _state = _state.copyWith(exchangeList: resp.list, date: DateUtil.getTimeFromDateTime(dateTime: resp.date),);
    notifyListeners();
  }
}