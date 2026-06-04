import 'package:flutter/material.dart';
import 'package:tv_aspeptare/db_isar/isar_model/setting_right_model_isar.dart';
import 'package:tv_aspeptare/db_isar/isar_repository/setting_right_repository.dart';

import '../../const/colors_app.dart';

class ScreenSettingsRight extends ChangeNotifier {
  final SettingRightRepository _repository;

  String _textRightTitle = 'Pregătite:';
  String _rightColumnColor = colorRight;
  String _rightColorText = colorTextTitleLeft;
  String _rightColorTitleBox = colorTitleRightBox;
  String _rightColorBorder = boxBorderColor;
  double _rightSizeText = 15.0;
  double _rightSizeBorder = 0.0;
  String _styleColumnRight = 'Roboto';
  Alignment _alignmentRight = Alignment.bottomRight;

  String get textRightTitle => _textRightTitle;

  String get rightColumnColor => _rightColumnColor;

  String get rightColorText => _rightColorText;

  String get rightColorTitleBox => _rightColorTitleBox;

  String get rightColorBorder => _rightColorBorder;

  double get rightSizeText => _rightSizeText;

  double get rightSizeBorder => _rightSizeBorder;

  String get styleColumnRight => _styleColumnRight;

  Alignment get alignmentRight => _alignmentRight;

  ScreenSettingsRight(this._repository) {
    _load();
  }

  Future<void> _load() async {
    final model = await _repository.get();
    _applyModel(model);
    notifyListeners();
  }

  void _applyModel(SettingRightModel m) {
    _textRightTitle = m.textRightTitle;
    _rightColumnColor = m.rightColumnColor;
    _rightColorText = m.rightColorText;
    _rightColorTitleBox = m.rightColorTitleBox;
    _rightColorBorder = m.rightColorBorder;
    _rightSizeText = m.rightSizeText;
    _rightSizeBorder = m.rightSizeBorder;
    _styleColumnRight = m.styleColumnRight;
    _alignmentRight = m.alignment;
  }

  Future<void> _save() async {
    final model = SettingRightModel()
      ..textRightTitle = _textRightTitle
      ..rightColumnColor = _rightColumnColor
      ..rightColorText = _rightColorText
      ..rightColorTitleBox = _rightColorTitleBox
      ..rightColorBorder = _rightColorBorder
      ..rightSizeText = _rightSizeText
      ..rightSizeBorder = _rightSizeBorder
      ..styleColumnRight = _styleColumnRight
      ..alignment = _alignmentRight;

    await _repository.save(model);
  }

  void updateTextRightTitle(String text) {
    _textRightTitle = text;
    _save();
    notifyListeners();
  }

  void updateRightColumnColor(String text) {
    _rightColumnColor = text;
    _save();
    notifyListeners();
  }

  void updateRightColorText(String text) {
    _rightColorText = text;
    _save();
    notifyListeners();
  }

  void updateRightColorTitleBox(String text) {
    _rightColorTitleBox = text;
    _save();
    notifyListeners();
  }

  void updateRightColorBorder(String text) {
    _rightColorBorder = text;
    _save();
    notifyListeners();
  }

  void updateRightSizeText(double text) {
    _rightSizeText = text;
    _save();
    notifyListeners();
  }

  void updateRightSizeBorder(double text) {
    _rightSizeBorder = text;
    _save();
    notifyListeners();
  }

  void updateStyleColumnRight(String text) {
    _styleColumnRight = text;
    _save();
    notifyListeners();
  }

  void updateAlignmentRight(Alignment text) {
    _alignmentRight = text;
    _save();
    notifyListeners();
  }
}
