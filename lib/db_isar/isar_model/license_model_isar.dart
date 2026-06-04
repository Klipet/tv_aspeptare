import 'package:isar/isar.dart';

part 'license_model_isar.g.dart';

@collection
class LicenseModelIsar{
  Id id = Isar.autoIncrement;
  late String licenseCode;
  late String uri;
  late String apikey;
  late String company;
}