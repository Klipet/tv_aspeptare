

import 'dart:io';

import 'package:flutter/material.dart';

import '../../db_isar/isar_model/setting_header_model_isar.dart';
import '../../db_isar/isar_repository/setting_header_repository.dart';

class ScreenSettingsHeader extends ChangeNotifier {
  final SettingsHeaderRepository _repository;

  // ── Поля ─────────────────────────────────────────────────────────────────────


  String _textTitle = '';
  String _styleTitle = 'Roboto';
  double _sizeText = 0.0;
  double _paddingHeader = 0.0;
  double _sizeToolBar = 0.0;
  int _deleteHours = 24;
  int _sizeBox = 4;
  bool _soundActive = false;
  bool _deleteActive = false;
  bool _videoPlayer = false;
  String _animatie = 'Default';
 // Sounds _sounds = Sounds.success;
  File? _selectedImage;

  // ── Getters ───────────────────────────────────────────────────────────────────


  String get textTitle => _textTitle;
  String get styleTitle => _styleTitle;
  double get sizeText => _sizeText;
  double get paddingHeader => _paddingHeader;
  double get sizeToolBar => _sizeToolBar;
  int get deleteHours => _deleteHours;
  int get sizeBox => _sizeBox;
  bool get soundActive => _soundActive;
  bool get deleteActive => _deleteActive;
  bool get videoPlayer => _videoPlayer;
  String get animatie => _animatie;
//  Sounds get sounds => _sounds;
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
    _textTitle = m.textTitle;
    _styleTitle = m.styleTitle;
    _sizeText = m.sizeText;
    _paddingHeader = m.paddingHeader;
    _sizeToolBar = m.sizeToolBar;
    _deleteHours = m.deleteHours;
    _sizeBox = m.sizeBox;
    _soundActive = m.soundActive;
    _deleteActive = m.deleteActive;
    _videoPlayer = m.videoPlayer;
    _animatie = m.animatie;
//    _sounds = Sounds.values.firstWhere(
//          (s) => s.toString() == m.sounds,
 //     orElse: () => Sounds.success,
//    );
    if (m.selectedImagePath != null) {
      _selectedImage = File(m.selectedImagePath!);
    }
  }

  // ── Сохранение в Isar ─────────────────────────────────────────────────────────

  Future<void> _save() async {
    final model = SettingsHeaderModel()
      ..textTitle = _textTitle
      ..styleTitle = _styleTitle
      ..sizeText = _sizeText
      ..paddingHeader = _paddingHeader
      ..sizeToolBar = _sizeToolBar
      ..deleteHours = _deleteHours
      ..sizeBox = _sizeBox
      ..soundActive = _soundActive
      ..deleteActive = _deleteActive
      ..videoPlayer = _videoPlayer
      ..animatie = _animatie
 //     ..sounds = _sounds.toString()
      ..selectedImagePath = _selectedImage?.path;

    await _repository.save(model);
  }

  // ── Updaters ──────────────────────────────────────────────────────────────────

  void updateTitle(String text) {
    _textTitle = text;
    _save();
    notifyListeners();
  }

  void updateFontTitle(String text) {
    _styleTitle = text;
    _save();
    notifyListeners();
  }

  void updateSizeText(double value) {
    _sizeText = value;
    _save();
    notifyListeners();
  }

  void updatePaddingText(double value) {
    _paddingHeader = value;
    _save();
    notifyListeners();
  }

  void updateSizeToolBar(double value) {
    _sizeToolBar = value;
    _save();
    notifyListeners();
  }

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

  void updateDeleteActivate(bool value) {
    _deleteActive = value;
    _save();
    notifyListeners();
  }

  void updateShowVideoPlayer(bool value) {
    _videoPlayer = value;
    _save();
    notifyListeners();
  }

  void updateAnimation(String value) {
    _animatie = value;
    _save();
    notifyListeners();
  }

//  void updateSounds(Sounds sounds) {
//    _sounds = sounds;
//    _save();
//    notifyListeners();
 // }

  Future<void> updateSelectedImage(File? image) async {
    if (image == null) return;
    _selectedImage = image;
    await _save();
    notifyListeners();
  }
}
