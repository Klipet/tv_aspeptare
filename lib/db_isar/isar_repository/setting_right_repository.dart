import 'package:isar/isar.dart';
import 'package:tv_aspeptare/db_isar/isar_model/setting_right_model_isar.dart';

class SettingRightRepository{
  final Isar _isar;

  SettingRightRepository(this._isar);

  // ── Получить настройки (или дефолтные если ещё не сохранялись) ───────────────

  Future<SettingRightModel> get() async {
    final existing = await _isar.settingRightModels.get(0); // ← было 0, надо 1
    if (existing != null) return existing;

    // Первый запуск — сохраняем дефолтные значения
    final defaults = SettingRightModel(); // поля уже заданы в модели
    await save(defaults);
    return defaults;
  }

  // ── Сохранить ─────────────────────────────────────────────────────────────────

  Future<void> save(SettingRightModel model) async {
    await _isar.writeTxn(() async {
      await _isar.settingRightModels.put(model);
    });
  }
}