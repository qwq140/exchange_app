import 'dart:io';

import 'package:dio/dio.dart';
import 'package:exchange_app/model/exchange_model.dart';
import 'package:exchange_app/model/result.dart';

class ExchangeRepository {
  final _dio = Dio();
  final _baseUrl = 'http://${Platform.isAndroid ? '10.0.2.2' : 'localhost'}:8080';

  Future<Result<ExchangeModel>> getExchangeList() async {
    final resp = await _dio.get('$_baseUrl/api/exchange/recent');
    if(resp.data['code'] == 1){
      return Result.success(ExchangeModel.fromJson(resp.data['content']));
    }
    return const Result.error('데이터를 불러오는데 실패하였습니다.');
  }
}