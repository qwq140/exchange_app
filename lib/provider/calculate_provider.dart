import 'package:exchange_app/model/exchange_list_model.dart';
import 'package:exchange_app/provider/calculate_state.dart';
import 'package:exchange_app/provider/exchange_provider.dart';
import 'package:flutter/material.dart';

class CalculateProvider with ChangeNotifier {
  late CalculateState _state;
  CalculateState get state => _state;

  CalculateProvider({required List<ExchangeListModel> exchangeList}){
    _state = CalculateState(selectExchange: exchangeList.first, exchangeList: exchangeList, after: '0', before: '0', rate: 1);
    _rateCal();
  }

  /// 의존하는 값 변경시 호출
  void update(ExchangeProvider exchangeProvider){
    _state = _state.copyWith(exchangeList: exchangeProvider.state.exchangeList);
    notifyListeners();
  }

  void selectExchange(String value){
    ExchangeListModel exchange = _state.exchangeList.firstWhere((e) => e.unit == value);
    _state = _state.copyWith(selectExchange: exchange);
    _rateCal();
    _calculate(_state.before);
  }

  /// 자판 입력할 때
  void insert(String value){

    String temp = _state.before;
    if(value == '<-'){
      if(temp.length == 1) {
        temp = '0';
      } else {
        temp = temp.substring(0,_state.before.length-1);
      }
    } else if(value == "."){
      if(!temp.contains('.')) temp = temp + value;
    } else {
      if(temp == '0') {
        temp = value;
      } else {
        temp = temp + value;
      }
    }

    _calculate(temp);
  }

  void _calculate(String before){
    double beforeAmount = double.parse(before);
    double afterAmount = double.parse(_state.selectExchange.amount.replaceAll(',', '')) * beforeAmount * _state.rate;
    _state = _state.copyWith(before: before, after: afterAmount == 0.0 ? '0': afterAmount.toString());
    notifyListeners();
  }

  void _rateCal(){
    String name = _state.selectExchange.unit;
    String substring =  name.substring(name.indexOf('(')+1, name.indexOf(')'));
    _state = _state.copyWith(rate: 1 / (double.parse(substring)));
  }
}