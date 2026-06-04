import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/order_model.dart';
import '../providers/logger_providers/app_logger.dart';

class OrderService {
  Future<List<Order>?> getOrdeers({
    required String url,
    required int deleteHours,
  }) async {
    try{
    final response = await http.Client()
        .get(Uri.parse('$url/json/GetCurrentOrdersList?hours=$deleteHours'))
        .timeout(const Duration(seconds: 10));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      final raw = data['OrdersList'] as List<dynamic>;
      final orders = raw
          .map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList();
      return orders;
    }else{
      await AppLogger().log(
        action: 'OrderService',
        message: 'global error load data',
        details: response.body,
        type: 2,
      );
      return null;
    }
    }catch(e){
     await AppLogger().log(
       action: 'OrderService',
       message: 'global error load data',
       details: e.toString(),
       type: 2,
     );
      return null;
    }
  }
}
