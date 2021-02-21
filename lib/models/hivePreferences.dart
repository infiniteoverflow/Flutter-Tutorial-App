import 'package:hive/hive.dart';
part 'hivePreferences.g.dart';

@HiveType(typeId: 0)
class HivePreferences {

  @HiveField(0)
  bool isFirstTime;

  @HiveField(1)
  bool darkTheme;

  HivePreferences({this.isFirstTime,this.darkTheme});
}