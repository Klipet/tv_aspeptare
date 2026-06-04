import 'package:hexcolor/hexcolor.dart';
import 'package:isar/isar.dart';

part 'setting_header_model_isar.g.dart';

@collection
class SettingsHeaderModel {
  Id id = 0; // singleton — всегда один объект

  String textTitle = '';
  String styleTitle = 'Roboto';
  double sizeText = 0.0;
  double paddingHeader = 0.0;
  double sizeToolBar = 0.0;
  int deleteHours = 24;
  int sizeBox = 4;

  bool soundActive = false;
  bool deleteActive = false;
  bool videoPlayer = false;

  String animatie = 'Default';

  // Sounds хранится как строка (enum.toString())
  String sounds = 'Sounds.success';

  // Путь к файлу изображения
  String? selectedImagePath;
}
