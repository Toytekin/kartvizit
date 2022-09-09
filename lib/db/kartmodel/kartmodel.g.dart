// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kartmodel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class KartModelAdapter extends TypeAdapter<KartModel> {
  @override
  final int typeId = 1;

  @override
  KartModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return KartModel(
      ad: fields[0] as String,
      sirket: fields[1] as String,
      unvan: fields[2] as String,
      adres: fields[3] as String,
      tel: fields[4] as String,
      wep: fields[5] as String,
      imagePath: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, KartModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.ad)
      ..writeByte(1)
      ..write(obj.sirket)
      ..writeByte(2)
      ..write(obj.unvan)
      ..writeByte(3)
      ..write(obj.adres)
      ..writeByte(4)
      ..write(obj.tel)
      ..writeByte(5)
      ..write(obj.wep)
      ..writeByte(6)
      ..write(obj.imagePath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is KartModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
