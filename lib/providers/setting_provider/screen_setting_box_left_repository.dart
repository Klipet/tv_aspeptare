import 'package:flutter/material.dart';
import 'package:tv_aspeptare/db_isar/isar_model/setting_box_left_model_isar.dart';
import 'package:tv_aspeptare/db_isar/isar_repository/setting_box_left_repository.dart';

import '../../const/colors_app.dart';

class ScreenSettingsBoxLeft extends ChangeNotifier{
  final SettingBoxLeftRepository _repository;

  String _backgroundBoxColorLeft = colorLeftBox;
  String _boxBorderColorLeft = boxBorderColor;
  String _textBoxColorLeft = colorTextBoxLeft;
  String _styleBoxLeft = 'Roboto';
  double _sizeTextLeft = 15.0;
  double _radiusBoxLeft = 2.0;
  double _sizeBorderLeft = 1.0;
  double _heightBoxLeft = 15.0;
  double _widthBoxLeft = 15.0;
  bool _borderBoxLeft = false;

  String get backgroundBoxColorLeft => _backgroundBoxColorLeft;
  String get boxBorderColorLeft => _boxBorderColorLeft;
  String get textBoxColorLeft => _textBoxColorLeft;
  String get styleBoxLeft => _styleBoxLeft;
  double get sizeTextLeft => _sizeTextLeft;
  double get radiusBoxLeft => _radiusBoxLeft;
  double get sizeBorderLeft => _sizeBorderLeft;
  double get heightBoxLeft => _heightBoxLeft;
  double get widthBoxLeft => _widthBoxLeft;
  bool get borderBoxLeft => _borderBoxLeft;

  ScreenSettingsBoxLeft(this._repository){
    _load();
  }

  Future<void> _load() async {
    final model = await _repository.get();
    _applyModel(model);
    notifyListeners();
  }
  void _applyModel(SettingBoxLeftModel m) {
    _backgroundBoxColorLeft = m.backgroundBoxColorLeft;
    _boxBorderColorLeft = m.boxBorderColorLeft ;
    _textBoxColorLeft = m.textBoxColorLeft;
    _styleBoxLeft = m.styleBoxLeft;
    _sizeTextLeft = m.sizeTextLeft;
    _radiusBoxLeft = m.radiusBoxLeft;
    _sizeBorderLeft = m.sizeBorderLeft;
    _heightBoxLeft = m.heightBoxLeft;
    _widthBoxLeft = m.widthBoxLeft;
    _borderBoxLeft = m.borderBoxLeft;
  }

  Future<void> _save() async {
    final model = SettingBoxLeftModel()
    ..backgroundBoxColorLeft = _backgroundBoxColorLeft
    ..boxBorderColorLeft = _boxBorderColorLeft
    ..textBoxColorLeft = _textBoxColorLeft
    ..styleBoxLeft = _styleBoxLeft
    ..sizeTextLeft = _sizeTextLeft
    ..radiusBoxLeft = _radiusBoxLeft
    ..sizeBorderLeft = _sizeBorderLeft
    ..heightBoxLeft = _heightBoxLeft
    ..widthBoxLeft = _widthBoxLeft
    ..borderBoxLeft = _borderBoxLeft;
    await _repository.save(model);
  }

  void updateBackgroundBoxColorLeft(String text) {
    _backgroundBoxColorLeft = text;
    _save();
    notifyListeners();
  }
  void updateBoxBorderColorLeft(String text) {
    _boxBorderColorLeft = text;
    _save();
    notifyListeners();
  }
  void updateTextBoxColorLeft(String text) {
    _textBoxColorLeft = text;
    _save();
    notifyListeners();
  }
  void updateStyleBoxLeft(String text) {
    _styleBoxLeft = text;
    _save();
    notifyListeners();
  }
  void updateSizeTextLeft(double text) {
    _sizeTextLeft = text;
    _save();
    notifyListeners();
  }
  void updateRadiusBoxLeft(double text) {
    _radiusBoxLeft = text;
    _save();
    notifyListeners();
  }
  void updateSizeBorderLeft(double text) {
    _sizeBorderLeft = text;
    _save();
    notifyListeners();
  }
  void updateHeightBoxLeft(double text) {
    _heightBoxLeft = text;
    _save();
    notifyListeners();
  }
  void updateWidthBoxLeft(double text) {
    _widthBoxLeft = text;
    _save();
    notifyListeners();
  }
  void updateBorderBoxLeft(bool text) {
    _borderBoxLeft = text;
    _save();
    notifyListeners();
  }

}