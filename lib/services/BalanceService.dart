import 'dart:convert';
import 'package:flutter/material.dart';

import '../modals/BalanceInfo.dart';

class BalanceService {
  static Future getBalanceInfo(BuildContext context) async {
    final response = await DefaultAssetBundle.of(context)
        .loadString('mock/BalanceData.json');
    final data = jsonDecode(response);
    final balanceDetails =
        data.map((item) => BalanceInfo.fromJson(item)).toList();
    return balanceDetails;
  }
}
