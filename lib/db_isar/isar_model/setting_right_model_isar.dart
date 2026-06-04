import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

import '../../const/colors_app.dart';

part 'setting_right_model_isar.g.dart';
@collection
class SettingRightModel{
  Id id = 0;
  String textRightTitle = 'Pregătite:';
  String rightColumnColor = colorRight;
  String rightColorText = colorTextTitleLeft;
  String rightColorTitleBox = colorTitleRightBox;
  String rightColorBorder = boxBorderColor;
  double rightSizeText = 15.0;
  double rightSizeBorder = 0.0;
  String styleColumnRight = 'Roboto';
  // Alignment хранится как строка
  String alignmentString = 'bottomRight';

  // Геттер и сеттер для удобства
  @ignore
  Alignment get alignment => _alignmentFromString(alignmentString);

  @ignore
  set alignment(Alignment value) {
    alignmentString = _alignmentToString(value);
  }
}

String _alignmentToString(Alignment a) {
  if (a == Alignment.topLeft) return 'topLeft';
  if (a == Alignment.topCenter) return 'topCenter';
  if (a == Alignment.topRight) return 'topRight';
  if (a == Alignment.centerLeft) return 'centerLeft';
  if (a == Alignment.center) return 'center';
  if (a == Alignment.centerRight) return 'centerRight';
  if (a == Alignment.bottomLeft) return 'bottomLeft';
  if (a == Alignment.bottomCenter) return 'bottomCenter';
  if (a == Alignment.bottomRight) return 'bottomRight';
  return 'bottomRight';
}

Alignment _alignmentFromString(String s) {
  switch (s) {
    case 'topLeft': return Alignment.topLeft;
    case 'topCenter': return Alignment.topCenter;
    case 'topRight': return Alignment.topRight;
    case 'centerLeft': return Alignment.centerLeft;
    case 'center': return Alignment.center;
    case 'centerRight': return Alignment.centerRight;
    case 'bottomLeft': return Alignment.bottomLeft;
    case 'bottomCenter': return Alignment.bottomCenter;
    case 'bottomRight': return Alignment.bottomRight;
    default: return Alignment.bottomRight;
  }
}