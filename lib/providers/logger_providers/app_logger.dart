import 'dart:convert';

import 'package:tv_aspeptare/const/conas_app.dart';

import '../../const/load_device_info.dart';
import '../../db_isar/isar_repository/license_isar_repository.dart';
import '../../models/log_request_model.dart';
import '../../services/log_request_post_api.dart';

class AppLogger {
  static final AppLogger _instance = AppLogger._internal();
  factory AppLogger() => _instance;

  AppLogger._internal();

  late final LogRequestPostApi _logService;
  late final LicenseIsarRepository _apiKeyRepository;

  void init({
    required LogRequestPostApi logService,
    required LicenseIsarRepository apiKeyRepository,
  }) {
    _logService = logService;
    _apiKeyRepository = apiKeyRepository;
  }

  Future<void> log({
    required String action,
    dynamic message,
    String details = '',
    int type = 1,
    String? entity,
  }) async {
    try {
      final settings = await _apiKeyRepository.getAll();
      final device = await loadDeviceInfo();
      final encodedMessage = _safeEncode(message);

      final request = LogRequest(
        source: ConstApp.APPNAME,
        action: action,
        message: encodedMessage,
        details: details,
        hostName: device.publicIP,
        ip: device.privateIP,
        type: type,
        domain: '',
        entity: settings?.licenseCode ?? '',
        appVersion: '',
        date: DateTime.now(),
        os: 'Android',
        ram: '',
        hdd: '',
        company: settings?.company ?? '',
        companyID: 0,
        licenseID: settings?.apikey ?? '',
      );

      await _logService.logPostServer(logRequest: request);
    } catch (e) {
      print('LOG ERROR: $e');
    }
  }

  String _safeEncode(dynamic data) {
    try {
      if (data == null) return '';
      if (data is String) return data;

      if (data is Map || data is List) {
        return jsonEncode(data);
      }

      // если есть toJson
      final dynamic json = data.toJson();
      return jsonEncode(json);
    } catch (_) {
      return data.toString();
    }
  }
}