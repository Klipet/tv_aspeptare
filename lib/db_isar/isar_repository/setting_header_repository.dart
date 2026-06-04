import 'package:isar/isar.dart';

import '../isar_model/setting_header_model_isar.dart';

class SettingsHeaderRepository {
  final Isar _isar;

  SettingsHeaderRepository(this._isar);

  // ── Получить настройки (или дефолтные если ещё не сохранялись) ───────────────

  Future<SettingsHeaderModel> get() async {
    final existing = await _isar.settingsHeaderModels.get(0); // ← было 0, надо 1
    if (existing != null) return existing;

    // Первый запуск — сохраняем дефолтные значения
    final defaults = SettingsHeaderModel(); // поля уже заданы в модели
    await save(defaults);
    return defaults;
  }

  // ── Сохранить ─────────────────────────────────────────────────────────────────

  Future<void> save(SettingsHeaderModel model) async {
    await _isar.writeTxn(() async {
      await _isar.settingsHeaderModels.put(model);
    });
  }
}