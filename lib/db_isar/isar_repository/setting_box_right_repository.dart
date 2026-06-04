import 'package:isar/isar.dart';
import 'package:tv_aspeptare/db_isar/isar_model/setting_box_right_model_isar.dart';

class SettingBoxRightRepository{
  final Isar _isar;

  SettingBoxRightRepository(this._isar);

  // ── Получить настройки (или дефолтные если ещё не сохранялись) ───────────────

  Future<SettingBoxRightModel> get() async {
    final existing = await _isar.settingBoxRightModels.get(0); // ← было 0, надо 1
    if (existing != null) return existing;

    // Первый запуск — сохраняем дефолтные значения
    final defaults = SettingBoxRightModel(); // поля уже заданы в модели
    await save(defaults);
    return defaults;
  }

  // ── Сохранить ─────────────────────────────────────────────────────────────────

  Future<void> save(SettingBoxRightModel model) async {
    await _isar.writeTxn(() async {
      await _isar.settingBoxRightModels.put(model);
    });
  }
}