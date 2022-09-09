import 'package:hive/hive.dart';
part 'kartmodel.g.dart';

@HiveType(typeId: 1)
class KartModel {
  @HiveField(0)
  String ad;

  @HiveField(1)
  String sirket;

  @HiveField(2)
  String unvan;

  @HiveField(3)
  String adres;

  @HiveField(4)
  String tel;

  @HiveField(5)
  String wep;

  @HiveField(6)
  String imagePath;

  KartModel({
    required this.ad,
    required this.sirket,
    required this.unvan,
    required this.adres,
    required this.tel,
    required this.wep,
    required this.imagePath,
  });
}
