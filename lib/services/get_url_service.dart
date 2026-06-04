import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rich_console/rich_console.dart';
import 'package:tv_aspeptare/const/conas_app.dart';
import 'package:tv_aspeptare/const/load_device_info.dart';

import '../models/post_get_url.dart';
import '../models/response_model.dart';

class GetUrlService{
  Future<ResponseRegistrApp> getUrl({required String licenseID}) async {
    ConstApp constants = ConstApp();
    try {
      const env = String.fromEnvironment('ENV');

      String baseUrl = env == 'dev'
          ? constants.API_DEV_LICENSE
          : constants.API_LICENSE;

      final url = Uri.parse('${baseUrl}GetURI');
      printRich(url, background: Colors.green);
      final String basicAuth = 'Basic ${base64Encode(
          utf8.encode('${constants.USERNAME}:${constants.PASSWORD}'))}';

      final infoDevice = await loadDeviceInfo();

      final dataInfo = PostGetUrl(
          applicationVersion: infoDevice.applicationVersion,
          deviceID: infoDevice.deviceID,
          deviceModel: infoDevice.deviceModel,
          deviceName: infoDevice.deviceName,
          licenseActivationCode: '',
          osType: infoDevice.osType,
          osVersion: infoDevice.osVersion,
          privateIP: infoDevice.privateIP,
          publicIP: infoDevice.privateIP,
          salePointAddress: infoDevice.salePointAddress,
          serialNumber: infoDevice.serialNumber,
          workplace: infoDevice.workplace,
          lastAuthorizedUser: DateTime.now().toString(),
          licenseID: licenseID
      );

      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': basicAuth,
        },
        body: jsonEncode(dataInfo.toJson()),
      );

      if(response.statusCode == 200){
        final data = jsonDecode(response.body) as Map<String, dynamic>;
        return ResponseRegistrApp.fromJson(data);
      }else{
       return ResponseRegistrApp(errorCode: response.statusCode, errorMessage: response.body, appData: null);
      }
    }catch(e){
      return ResponseRegistrApp(errorCode: 404, errorMessage: e.toString(), appData: null);
    }
  }

}