import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:tv_aspeptare/const/conas_app.dart';

import '../models/post_get_url.dart';

Future<PostGetUrl> loadDeviceInfo() async {
  final deviceInfo = DeviceInfoPlugin();
  final networkInfo = NetworkInfo();
  final packageInfo = await PackageInfo.fromPlatform();

  // Версия приложения
  String  applicationVersion = packageInfo.version;

    final android = await deviceInfo.androidInfo;
    String   deviceID      = android.id;
    String   deviceModel   = android.model;
    String   deviceName    = android.device;
    String   osVersion     = android.version.release;
    String   serialNumber  = android.serialNumber ?? 'unknown';
    int osType = ConstApp.WaiterAssistant;


  // Сеть
  String  privateIP = await networkInfo.getWifiIP()  ?? 'unknown';
  String  publicIP  = await networkInfo.getWifiGatewayIP() ?? 'unknown';


  return PostGetUrl(
    applicationVersion:    applicationVersion,
    deviceID:              deviceID,
    deviceModel:           deviceModel,
    deviceName:            deviceName,
    osVersion:             osVersion,
    serialNumber:          serialNumber,
    osType:                osType,
    privateIP:             privateIP,
    publicIP:              publicIP,
    licenseActivationCode: '',
    licenseID:             '',
    salePointAddress:      '',
    workplace:             '',
    lastAuthorizedUser:    '',
  );

}