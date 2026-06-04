import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:tv_aspeptare/const/conas_app.dart';

import '../const/load_device_info.dart';
import '../models/post_get_url.dart';
import '../models/post_register_app.dart';
import '../models/response_model.dart';
import 'log_request_post_api.dart';

class ActivationApi {
  final ConstApp constants = ConstApp();
  final log = LogRequestPostApi();

  Future<ResponseRegistrApp?> activationLicense(String licenseCode) async {
    const env = String.fromEnvironment('ENV');
    try {
      String baseUrl = env == 'dev'
          ? constants.API_DEV_LICENSE
          : constants.API_LICENSE;
      final infoDevice = await loadDeviceInfo();

      final dataInfo = PostRegisterApp(
        applicationVersion: infoDevice.applicationVersion,
        deviceID: infoDevice.deviceID,
        deviceModel: infoDevice.deviceModel,
        deviceName: infoDevice.deviceName,
        licenseActivationCode: licenseCode,
        osType: infoDevice.osType,
        osVersion: infoDevice.osVersion,
        privateIP: infoDevice.privateIP,
        publicIP: infoDevice.privateIP,
        salePointAddress: infoDevice.salePointAddress,
        serialNumber: infoDevice.serialNumber,
        workplace: infoDevice.workplace,
      );
      final url = Uri.parse('${baseUrl}RegisterApplication');
      final String basicAuth =
          'Basic ${base64Encode(
          utf8.encode('${constants.USERNAME}:${constants.PASSWORD}'))}';
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': basicAuth,
        },
        body: jsonEncode(dataInfo.toJson()),
      ).timeout(Duration(seconds: 5));
      if (response.statusCode == 200) {
        final responseJson = jsonDecode(response.body);
        final apiResponse = ResponseRegistrApp.fromJson(responseJson);
        if (apiResponse.errorCode == 0 && apiResponse.appData != null) {
          return apiResponse;
        } else if (apiResponse.errorCode == 124) {
          return ResponseRegistrApp(
            errorMessage: 'errors.incorrectLicense',
            errorCode: 124,
            appData: null,
          );
        } else if (apiResponse.errorCode == 184) {
          return ResponseRegistrApp(
            errorMessage: 'errors.errorCode',
            errorCode: 124,
            appData: null,
          );
        } else {
          return ResponseRegistrApp(
            errorMessage: 'errors.errorCode',
            errorCode: 124,
            appData: null,
          );
        }
      }
    } catch (e) {
      return ResponseRegistrApp(
        errorMessage: 'errors.errorCode',
        errorCode: 184,
        appData: null,
      );
    }
    return ResponseRegistrApp(
      errorMessage: 'errors.errorCode',
      errorCode: 184,
      appData: null,
    );
  }
}