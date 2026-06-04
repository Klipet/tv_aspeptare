import 'package:isar/isar.dart';

import '../init_isar.dart';
import '../isar_model/license_model_isar.dart';

class LicenseIsarRepository {
  // Сохранить / обновить
  Future<void> save({
    required String licenseCode,
    required String uri,
    required String apikey,
    required String company,
  }) async {
    final _isar = await IsarService.init();
    final modelLicense = LicenseModelIsar()
      ..id = 0
      ..licenseCode = licenseCode
      ..company = company
      ..apikey = apikey
      ..uri = uri;

    await _isar.writeTxn(() => _isar.licenseModelIsars.put(modelLicense));
  }

  // Получить все
  Future<LicenseModelIsar?> getAll() async {
    final _isar = await IsarService.init();
    return await _isar.licenseModelIsars.get(0);
  }


  Future<String?> getApiKey() async {
    final _isar = await IsarService.init();
    final settings = await _isar.licenseModelIsars.get(0);
    return settings?.apikey;
  }

  // Получить по licenseID
  Future<String?> getlicenseCode() async {
    final _isar = await IsarService.init();
    final settings = await _isar.licenseModelIsars.get(0);
    return settings?.licenseCode;
  }

  Future<String?> getUrl() async {
    final _isar = await IsarService.init();
    final settings = await _isar.licenseModelIsars.get(0);
    return settings?.uri;
  }
  Future<String?> getCompany() async {
    final _isar = await IsarService.init();
    final settings = await _isar.licenseModelIsars.get(0);
    return settings?.company;
  }

  // Stream — слушать изменения
  Future<Stream<List<LicenseModelIsar>>> watchAll() async {
    final _isar = await IsarService.init();
    return _isar.licenseModelIsars.where().watch(fireImmediately: true);
  }
}
