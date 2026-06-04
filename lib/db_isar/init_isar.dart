import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tv_aspeptare/db_isar/isar_model/setting_box_left_model_isar.dart';
import 'package:tv_aspeptare/db_isar/isar_model/setting_box_right_model_isar.dart';

import 'isar_model/license_model_isar.dart';
import 'isar_model/setting_header_model_isar.dart';
import 'isar_model/setting_left_model_isar.dart';
import 'isar_model/setting_right_model_isar.dart';

class IsarService {
  static Isar? _instance;

  static Future<Isar> init() async {
    if (_instance != null) return _instance!;
    final dir = await getApplicationDocumentsDirectory();

    _instance = await Isar.open(
      [
        LicenseModelIsarSchema,
        SettingsHeaderModelSchema,
        SettingBoxLeftModelSchema,
        SettingBoxRightModelSchema,
        SettingRightModelSchema,
        SettingLeftModelSchema,
      ],
      directory: dir.path,
      inspector: true, // удобно для дебага
    );
    return _instance!;
  }
}
