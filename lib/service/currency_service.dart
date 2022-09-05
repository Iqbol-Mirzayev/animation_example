import 'dart:io';

import 'package:dio/dio.dart';

class GetCurrency {
  static Future getCurrency() async {
    try {
      Response res = await Dio().get("");
      if (res.statusCode == HttpStatus.ok) {
        return res.data;
      } else {
        return "Xato uzingdda";
      }
    } catch (e) {
      return "No internet";
    }
  }
}