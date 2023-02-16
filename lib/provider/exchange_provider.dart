import 'dart:async';

import 'package:exchange_app/model/exchange_list_model.dart';
import 'package:exchange_app/model/exchange_model.dart';
import 'package:exchange_app/model/result.dart';
import 'package:exchange_app/provider/exchange_state.dart';
import 'package:exchange_app/repository/exchange_repository.dart';
import 'package:exchange_app/utils/date_util.dart';
import 'package:flutter/material.dart';

class ExchangeProvider extends ChangeNotifier {
  final ExchangeRepository repository;

  ExchangeState _state = ExchangeLoading();

  ExchangeState get state => _state;

  ExchangeProvider({required this.repository}) {
    getExchangeList();
  }

  void getExchangeList() async {
    _state = ExchangeLoading();
    notifyListeners();

    Result<ExchangeModel> resp = await repository.getExchangeList();

    resp.when(
      success: (data) {
        _state = ExchangeState.data(exchangeList: data.list, date: DateUtil.getTimeFromDateTime(dateTime: data.date));
      },
      error: (message) {
        _state = ExchangeState.error(message);
      },
    );
    notifyListeners();
  }
}
