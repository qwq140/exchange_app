import 'dart:io';

import 'package:dio/dio.dart';
import 'package:exchange_app/model/exchange_model.dart';

class ExchangeRepository {
  final _dio = Dio();
  final _baseUrl = 'http://${Platform.isAndroid ? '10.0.2.2' : 'localhost'}:8080';

  Future<ExchangeModel> getExchangeList() async {
    final resp = await _dio.get('$_baseUrl/api/exchange/recent');
    return ExchangeModel.fromJson(resp.data['content']);
  }
}