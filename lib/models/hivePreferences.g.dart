// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hivePreferences.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HivePreferencesAdapter extends TypeAdapter<HivePreferences> {
  @override
  final int typeId = 0;

  @override
  HivePreferences read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HivePreferences(
      isFirstTime: fields[0] as bool,
      darkTheme: fields[1] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, HivePreferences obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.isFirstTime)
      ..writeByte(1)
      ..write(obj.darkTheme);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HivePreferencesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
