import 'package:isar/isar.dart';

import '../../const/colors_app.dart';

part 'setting_box_left_model_isar.g.dart';

@collection
class SettingBoxLeftModel{

  Id id = 0;
  String backgroundBoxColorLeft = colorLeftBox;
  String boxBorderColorLeft = boxBorderColor;
  String textBoxColorLeft = colorTextBoxLeft;
  String styleBoxLeft = 'Roboto';
  double sizeTextLeft = 15.0;
  double radiusBoxLeft = 2.0;
  double sizeBorderLeft = 1.0;
  double heightBoxLeft = 15.0;
  double widthBoxLeft = 15.0;
  bool borderBoxLeft = false;
}