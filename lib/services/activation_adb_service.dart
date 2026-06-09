import 'dart:convert';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:disk_space_plus/disk_space_plus.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../const/conas_app.dart';
import '../const/load_device_info.dart';
import '../models/adb_activation.dart';
import 'log_request_post_api.dart';

class ActivationAdbService{
  final ConstApp constants = ConstApp();
  final log = LogRequestPostApi();

  Future<AdbResponse?> activationLicenseAdb({required String licenseCode}) async{
    const env = String.fromEnvironment('ENV');
    final deviceInfo = DeviceInfoPlugin();
    final device = await deviceInfo.androidInfo;

    int resolutionWidth = 0;
    int resolutionHeight = 0;
    String osType = 'Unknown';
    int ramMb = 0;
    int cpuCores = 0;


    try{
      String baseUrl = env == 'dev'
          ? constants.ADB_API
          : constants.ADB_API;
      final infoDevice = await loadDeviceInfo();

      final diskSpacePlus = await DiskSpacePlus();

      if (Platform.isAndroid) {
        final android = await deviceInfo.androidInfo;
        osType = 'Android';
        cpuCores = android.supportedAbis.length; // приблизительно
      } else if (Platform.isIOS) {
        osType = 'iOS';
      }

      // Экран
      final window = WidgetsBinding.instance.platformDispatcher.views.first;
      resolutionWidth = window.physicalSize.width.toInt();
      resolutionHeight = window.physicalSize.height.toInt();

      // Хранилище (MB)
      final totalDisk = await diskSpacePlus.getTotalDiskSpace ?? 0;
      final storageMb = totalDisk.toInt();


      final dataInfo = AdbActivation(
        pairingCode: licenseCode,
        osType: osType,
        resolutionWidth: resolutionWidth,
        resolutionHeight: resolutionHeight,
        recommendedResolutionWidth: resolutionWidth,
        recommendedResolutionHeight: resolutionHeight,
        ramMb: ramMb,
        storageMb: storageMb,
        cpuCores: cpuCores,
      );

      final url = Uri.parse('${baseUrl}Devices/register');
      final response = await http.post(
        url,
        body: jsonEncode(dataInfo.toJson()),
      ).timeout(Duration(seconds: 5));

      if(response.statusCode == 200){
        final responseData = AdbResponse.fromJson(jsonDecode(response.body));
        return responseData;
      }
    }catch(e, t){

    }
  }
}