import 'package:exchange_app/model/exchange_list_model.dart';
import 'package:exchange_app/provider/calculate_state.dart';
import 'package:exchange_app/provider/exchange_provider.dart';
import 'package:flutter/material.dart';

class CalculateProvider with ChangeNotifier {
  late CalculateState _state;
  CalculateState get state => _state;

  CalculateProvider({required List<ExchangeListModel> exchangeList}){
    _state = CalculateState(selectExchange: exchangeList.first, exchangeList: exchangeList, after: '0', before: '0');
  }

  /// 의존하는 값 변경시 호출
  void update(ExchangeProvider exchangeProvider){
    _state = _state.copyWith(exchangeList: exchangeProvider.state.exchangeList);
    notifyListeners();
  }

  /// 자판 입력할 때
  void insert(String value){

  }

  void _calculate(double before){
    double after = double.parse(_state.selectExchange.amount) * before;
    _state = _state.copyWith(before: before.toString(), after: after.toString());
    notifyListeners();
  }
}