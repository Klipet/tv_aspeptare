import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:network_info_plus/network_info_plus.dart';
import 'package:rich_console/printRich.dart';
import 'package:tv_aspeptare/const/conas_app.dart';
import 'package:tv_aspeptare/db_isar/isar_repository/license_isar_repository.dart';

import '../const/load_device_info.dart';
import '../models/log_request_model.dart';

class LogRequestPostApi{
  LicenseIsarRepository apikeyRepository = LicenseIsarRepository();
  final deviceInfoPlugin = loadDeviceInfo();
  final ConstApp constants = ConstApp();
  final info = NetworkInfo();

  Future<void> logPostServer({required LogRequest logRequest}) async {
    const env = String.fromEnvironment('ENV');
    try{
      String baseUrl = env == 'dev'
          ? constants.API_LOG_DEV
          : constants.API_LOG;
      String password = env == 'dev'
          ? constants.PASSWORDLOG_DEV
          : constants.PASSWORDLOG;

      final url = Uri.parse('${baseUrl}App/Event');
      printRich(url, background: Colors.yellow);
      final String basicAuth =
          'Basic ${base64Encode(utf8.encode('${constants.USERNAMELOG}:${password}'))}';

      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': basicAuth,
        },
        body: jsonEncode(logRequest.toJson()),
      ).timeout(Duration(seconds: 5));
      if (response.statusCode == 200) {

      }else{

      }
    }catch(e){}
  }
}