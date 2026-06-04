import 'package:isar/isar.dart';
import 'package:tv_aspeptare/db_isar/isar_model/setting_left_model_isar.dart';

class SettingLeftRepository{
  final Isar _isar;

  SettingLeftRepository(this._isar);


  Future<SettingLeftModel> get() async {
    final existing = await _isar.settingLeftModels.get(0); // ← было 0, надо 1
    if (existing != null) return existing;

    // Первый запуск — сохраняем дефолтные значения
    final defaults = SettingLeftModel(); // поля уже заданы в модели
    await save(defaults);
    return defaults;
  }

  // ── Сохранить ─────────────────────────────────────────────────────────────────

  Future<void> save(SettingLeftModel model) async {
    await _isar.writeTxn(() async {
      await _isar.settingLeftModels.put(model);
    });
  }
}