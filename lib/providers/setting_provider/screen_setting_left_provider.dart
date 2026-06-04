import 'package:flutter/material.dart';
import 'package:tv_aspeptare/db_isar/isar_model/setting_box_right_model_isar.dart';
import 'package:tv_aspeptare/db_isar/isar_model/setting_left_model_isar.dart';
import 'package:tv_aspeptare/db_isar/isar_repository/setting_left_repository.dart';

import '../../const/colors_app.dart';

class ScreenSettingsLeft extends ChangeNotifier{
  final SettingLeftRepository _repository;

  String _textLeftTitle = 'În pregătire:';
  String _leftColumnColor = colorLeft;
  String _leftColorText = colorTextTitleLeft;
  String _titleColorBox = colorTitleLeftBox;
  String _leftColorBorder = boxBorderColor;
  double _leftSizeText = 15.0;
  double _leftSizeBorder = 0.0;
  String _styleColumnLeft = 'Roboto';


  String get textLeftTitle => _textLeftTitle;
  String get leftColumnColor => _leftColumnColor;
  String get leftColorText => _leftColorText;
  String get titleColorBox => _titleColorBox;
  String get leftColorBorder => _leftColorBorder;
  double get leftSizeText => _leftSizeText;
  double get leftSizeBorder => _leftSizeBorder;
  String get styleColumnLeft => _styleColumnLeft;

  ScreenSettingsLeft(this._repository){
    _load();
  }

  Future<void> _load() async {
    final model = await _repository.get();
    _applyModel(model);
    notifyListeners();
  }

  void _applyModel(SettingLeftModel m) {
    _textLeftTitle = m.textLeftTitle;
    _leftColumnColor = m.leftColumnColor;
    _leftColorText = m.leftColorText;
    _titleColorBox = m.titleColorBox;
    _leftColorBorder = m.leftColorBorder;
    _leftSizeText = m.leftSizeText;
    _leftSizeBorder = m.leftSizeBorder;
    _styleColumnLeft = m.styleColumnLeft;
  }

  Future<void> _save() async {
    final model = SettingLeftModel()
    ..textLeftTitle = _textLeftTitle
    ..leftColumnColor = _leftColumnColor
    ..leftColorText = _leftColorText
    ..titleColorBox = _titleColorBox
    ..leftColorBorder = _leftColorBorder
    ..leftSizeText = _leftSizeText
    ..leftSizeBorder = _leftSizeBorder
    ..styleColumnLeft = _styleColumnLeft;
    await _repository.save(model);
  }


  void updateTextLeftTitle(String text) {
    _textLeftTitle = text;
    _save();
    notifyListeners();
  }
  void updateLeftColumnColor(String text) {
    _leftColumnColor = text;
    _save();
    notifyListeners();
  }
  void updateLeftColorText(String text) {
    _leftColorText = text;
    _save();
    notifyListeners();
  }
  void updateTitleColorBox(String text) {
    _titleColorBox = text;
    _save();
    notifyListeners();
  }
  void updateLeftColorBorder(String text) {
    _leftColorBorder = text;
    _save();
    notifyListeners();
  }
  void updateLeftSizeText(double text) {
    _leftSizeText = text;
    _save();
    notifyListeners();
  }
  void updateLeftSizeBorder(double text) {
    _leftSizeBorder = text;
    _save();
    notifyListeners();
  }
  void updateStyleColumnLeft(String text) {
    _styleColumnLeft = text;
    _save();
    notifyListeners();
  }
}