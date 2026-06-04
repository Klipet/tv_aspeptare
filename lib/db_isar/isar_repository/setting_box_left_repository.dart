import 'package:isar/isar.dart';
import 'package:tv_aspeptare/db_isar/isar_model/setting_box_right_model_isar.dart';

import '../isar_model/setting_box_left_model_isar.dart';

class SettingBoxLeftRepository {
  final Isar _isar;

  SettingBoxLeftRepository(this._isar);

  // ── Получить настройки (или дефолтные если ещё не сохранялись) ───────────────

  Future<SettingBoxLeftModel> get() async {
    final existing = await _isar.settingBoxLeftModels.get(0); // ← было 0, надо 1
    if (existing != null) return existing;

    // Первый запуск — сохраняем дефолтные значения
    final defaults = SettingBoxLeftModel(); // поля уже заданы в модели
    await save(defaults);
    return defaults;
  }

  // ── Сохранить ─────────────────────────────────────────────────────────────────

  Future<void> save(SettingBoxLeftModel model) async {
    await _isar.writeTxn(() async {
      await _isar.settingBoxLeftModels.put(model);
    });
  }
}