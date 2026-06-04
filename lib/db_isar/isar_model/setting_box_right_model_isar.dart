import 'package:isar/isar.dart';

import '../../const/colors_app.dart';

part 'setting_box_right_model_isar.g.dart';

@collection
class SettingBoxRightModel{
  Id id = 0;
  String backgroundBoxColorRight = colorRightBox;
  String boxBorderColorRight = boxBorderColor;
  String textBoxColorRight = colorTextBoxRight;
  double sizeTextRight = 15.0;
  double radiusBoxRight = 2.0;
  double sizeBorderRight = 1.0;
  double wightBoxRight = 15.0;
  double heightBoxRight = 15.0;
  String styleBoxRight = 'Roboto';
  bool borderBoxRight = false;
}