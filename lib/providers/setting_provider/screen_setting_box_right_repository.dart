import 'package:flutter/material.dart';
import 'package:tv_aspeptare/db_isar/isar_model/setting_box_right_model_isar.dart';
import 'package:tv_aspeptare/db_isar/isar_repository/setting_box_right_repository.dart';

import '../../const/colors_app.dart';

class ScreenSettingsBoxRight extends ChangeNotifier{
  final SettingBoxRightRepository _repository;

  String _backgroundBoxColorRight = colorRightBox;
  String _boxBorderColorRight = boxBorderColor;
  String _textBoxColorRight = colorTextBoxRight;
  double _sizeTextRight = 15.0;
  double _radiusBoxRight = 2.0;
  double _sizeBorderRight = 1.0;
  double _wightBoxRight = 15.0;
  double _heightBoxRight = 15.0;
  String _styleBoxRight = 'Roboto';
  bool _borderBoxRight = false;

  String get backgroundBoxColorRight => _backgroundBoxColorRight;
  String get boxBorderColorRight => _boxBorderColorRight;
  String get textBoxColorRight => _textBoxColorRight;
  double get sizeTextRight => _sizeTextRight;
  double get radiusBoxRight => _radiusBoxRight;
  double get sizeBorderRight => _sizeBorderRight;
  double get wightBoxRight => _wightBoxRight;
  double get heightBoxRight => _heightBoxRight;
  String get styleBoxRight => _styleBoxRight;
  bool get borderBoxRight => _borderBoxRight;

  ScreenSettingsBoxRight(this._repository){
    _load();
  }

  Future<void> _load() async {
    final model = await _repository.get();
    _applyModel(model);
    notifyListeners();
  }

  void _applyModel(SettingBoxRightModel m) {
    _backgroundBoxColorRight = m.backgroundBoxColorRight;
    _boxBorderColorRight = m.boxBorderColorRight ;
    _textBoxColorRight = m.textBoxColorRight;
    _sizeTextRight = m.sizeTextRight;
    _radiusBoxRight = m.radiusBoxRight;
    _sizeBorderRight = m.sizeBorderRight;
    _wightBoxRight = m.wightBoxRight;
    _heightBoxRight = m.heightBoxRight;
    _styleBoxRight = m.styleBoxRight;
    _borderBoxRight = m.borderBoxRight;
  }

  Future<void> _save() async {
    final model = SettingBoxRightModel()
    ..backgroundBoxColorRight = _backgroundBoxColorRight
    ..boxBorderColorRight = _boxBorderColorRight
    ..textBoxColorRight = _textBoxColorRight
    ..sizeTextRight = _sizeTextRight
    ..radiusBoxRight = _radiusBoxRight
    ..sizeBorderRight = _sizeBorderRight
    ..wightBoxRight = _wightBoxRight
    ..heightBoxRight = _heightBoxRight
    ..styleBoxRight = _styleBoxRight
    ..borderBoxRight = _borderBoxRight;
    await _repository.save(model);
  }

  void updateBackgroundBoxColorRight(String text) {
    _backgroundBoxColorRight = text;
    _save();
    notifyListeners();
  }
  void updateBoxBorderColorRight(String text) {
    _boxBorderColorRight = text;
    _save();
    notifyListeners();
  }
  void updateTextBoxColorRight(String text) {
    _textBoxColorRight = text;
    _save();
    notifyListeners();
  }
  void updateSizeTextRight(double text) {
    _sizeTextRight = text;
    _save();
    notifyListeners();
  }
  void updateRadiusBoxRight(double text) {
    _radiusBoxRight = text;
    _save();
    notifyListeners();
  }
  void updateSizeBorderRight(double text) {
    _sizeBorderRight = text;
    _save();
    notifyListeners();
  }
  void updateWightBoxRight(double text) {
    _wightBoxRight = text;
    _save();
    notifyListeners();
  }
  void updateHeightBoxRight(double text) {
    _heightBoxRight = text;
    _save();
    notifyListeners();
  }
  void updateStyleBoxRight(String text) {
    _styleBoxRight = text;
    _save();
    notifyListeners();
  }
  void updateBorderBoxRight(bool text) {
    _borderBoxRight = text;
    _save();
    notifyListeners();
  }
}