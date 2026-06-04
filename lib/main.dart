import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_autostart/flutter_autostart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:tv_aspeptare/db_isar/isar_repository/license_isar_repository.dart';
import 'package:tv_aspeptare/db_isar/isar_repository/setting_box_left_repository.dart';
import 'package:tv_aspeptare/db_isar/isar_repository/setting_box_right_repository.dart';
import 'package:tv_aspeptare/db_isar/isar_repository/setting_left_repository.dart';
import 'package:tv_aspeptare/db_isar/isar_repository/setting_right_repository.dart';
import 'package:tv_aspeptare/screens/splash_screen.dart';

import 'db_isar/init_isar.dart';
import 'db_isar/isar_repository/setting_header_repository.dart';
import 'providers/logger_providers/app_logger.dart';
import 'providers/setting_provider/screen_setting_box_left_repository.dart';
import 'providers/setting_provider/screen_setting_box_right_repository.dart';
import 'providers/setting_provider/screen_setting_header_provider.dart';
import 'providers/setting_provider/screen_setting_left_provider.dart';
import 'providers/setting_provider/screen_setting_right_provider.dart';
import 'services/log_request_post_api.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  checkIsAutoStartEnabled();
  requestWifiPermission();
  SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersiveSticky, overlays: SystemUiOverlay.values);
  final isar = await IsarService.init();
  final settingsRepo = SettingsHeaderRepository(isar);
  final settingsLeftRepo = SettingLeftRepository(isar);
  final settingsRightRepo = SettingRightRepository(isar);
  final settingsBoxLeftRepo = SettingBoxLeftRepository(isar);
  final settingsBoxRightRepo = SettingBoxRightRepository(isar);
  AppLogger().init(
    logService: LogRequestPostApi(),
    apiKeyRepository: LicenseIsarRepository(),
  );

  runApp(
    MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ScreenSettingsLeft(settingsLeftRepo)),
      ChangeNotifierProvider(create: (context) => ScreenSettingsRight(settingsRightRepo)),
      ChangeNotifierProvider(create: (context) => ScreenSettingsHeader(settingsRepo)),
      ChangeNotifierProvider(create: (context) => ScreenSettingsBoxLeft(settingsBoxLeftRepo)),
      ChangeNotifierProvider(create: (context) => ScreenSettingsBoxRight(settingsBoxRightRepo)),
   //   ChangeNotifierProvider(create: (context) => WindowStateMonitor())
      // Добавьте другие провайдеры здесь
    ],
    child:
    const MyApp(),
  ),
  );
}

Future<void> checkIsAutoStartEnabled() async {
  final _flutterAutostartPlugin = FlutterAutostart();
  String isAutoStartEnabled;
  try {
    isAutoStartEnabled =
    await _flutterAutostartPlugin.checkIsAutoStartEnabled() == true
        ? "Yes"
        : "No";
    print("isAutoStartEnabled: $isAutoStartEnabled");
    if (isAutoStartEnabled == 'No') {
      openAutoStartPermissionSettings();
    }
  } on PlatformException {
    isAutoStartEnabled = 'Failed to check isAutoStartEnabled.';
  }
}
Future<void> openAutoStartPermissionSettings() async {
  final _flutterAutostartPlugin = FlutterAutostart();
  String autoStartPermission;
  try {
    autoStartPermission =
        await _flutterAutostartPlugin.showAutoStartPermissionSettings() ??
            'Unknown autoStartPermission';
  } on PlatformException {
    autoStartPermission = 'Failed to show autoStartPermission.';
  }
}

void requestWifiPermission() async {
  var status = await Permission.locationWhenInUse.status;
  var locale = await Permission.location.status;
  if (!status.isGranted) {
    await Permission.locationWhenInUse.request();
  }
  if (!locale.isGranted) {
    await Permission.location.request();
  }
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}



class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1080),
      minTextAdapt: true,
      splitScreenMode: true,
      ensureScreenSize: true,
      rebuildFactor: RebuildFactors.size,
      child: OverlaySupport.global(
          child: MaterialApp(
              home: SplashScreen()
          )
      ),
    );
  }
}
