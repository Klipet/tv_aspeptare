import 'package:isar/isar.dart';

import '../../const/colors_app.dart';

part 'setting_left_model_isar.g.dart';

@collection
class SettingLeftModel{
  Id id = 0;
  String textLeftTitle = 'În pregătire:';
  String leftColumnColor = colorLeft;
  String leftColorText = colorTextTitleLeft;
  String titleColorBox = colorTitleLeftBox;
  String leftColorBorder = boxBorderColor;
  double leftSizeText = 15.0;
  double leftSizeBorder = 0.0;
  String styleColumnLeft = 'Roboto';
}