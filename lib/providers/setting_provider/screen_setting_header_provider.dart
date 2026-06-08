import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sound_library/sound_library.dart';

import '../../db_isar/isar_model/setting_header_model_isar.dart';
import '../../db_isar/isar_repository/setting_header_repository.dart';

class ScreenSettingsHeader extends ChangeNotifier {
  final SettingsHeaderRepository _repository;

  // ── Поля ─────────────────────────────────────────────────────────────────────

  int _deleteHours = 24;
  int _sizeBox = 4;
  bool _soundActive = false;
  bool _videoPlayer = false;
  Sounds _sounds = Sounds.success;
  File? _selectedImage;

  // ── Getters ───────────────────────────────────────────────────────────────────

  int get deleteHours => _deleteHours;

  int get sizeBox => _sizeBox;

  bool get soundActive => _soundActive;

  bool get videoPlayer => _videoPlayer;

  Sounds get sounds => _sounds;

  File? get selectedImage => _selectedImage;

  // ── Конструктор ───────────────────────────────────────────────────────────────

  ScreenSettingsHeader(this._repository) {
    _load();
  }

  // ── Загрузка из Isar ──────────────────────────────────────────────────────────

  Future<void> _load() async {
    final model = await _repository.get();
    _applyModel(model);
    notifyListeners();
  }

  void _applyModel(SettingsHeaderModel m) {
    _deleteHours = m.deleteHours;
    _sizeBox = m.sizeBox;
    _soundActive = m.soundActive;
    _videoPlayer = m.videoPlayer;
    _sounds = Sounds.values.firstWhere(
      (s) => s.toString() == m.sounds,
      orElse: () => Sounds.success,
    );
    if (m.selectedImagePath != null) {
      _selectedImage = File(m.selectedImagePath!);
    }
  }

  // ── Сохранение в Isar ─────────────────────────────────────────────────────────

  Future<void> _save() async {
    final model = SettingsHeaderModel()
      ..deleteHours = _deleteHours
      ..sizeBox = _sizeBox
      ..soundActive = _soundActive
      ..videoPlayer = _videoPlayer
      //     ..sounds = _sounds.toString()
      ..selectedImagePath = _selectedImage?.path;

    await _repository.save(model);
  }

  // ── Updaters ──────────────────────────────────────────────────────────────────

  void updateDeleteHours(int value) {
    _deleteHours = value;
    _save();
    notifyListeners();
  }

  void updateSizeBox(int value) {
    _sizeBox = value;
    _save();
    notifyListeners();
  }

  void updateSoundsActive(bool value) {
    _soundActive = value;
    _save();
    notifyListeners();
  }

  void updateShowVideoPlayer(bool value) {
    _videoPlayer = value;
    _save();
    notifyListeners();
  }

    void updateSounds(Sounds sounds) {
      _sounds = sounds;
      _save();
      notifyListeners();
   }

  Future<void> updateSelectedImage(File? image) async {
    if (image == null) return;
    _selectedImage = image;
    await _save();
    notifyListeners();
  }
}
