// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Position _$PositionFromJson(Map<String, dynamic> json) {
  return Position(
    json['positionDate'] == null
        ? null
        : DateTime.parse(json['positionDate'] as String),
    (json['latitude'] as num)?.toDouble(),
    (json['longitude'] as num)?.toDouble(),
    (json['altitude'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$PositionToJson(Position instance) => <String, dynamic>{
      'positionDate': instance.positionDate?.toIso8601String(),
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'altitude': instance.altitude,
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    (json['positions'] as List)
        ?.map((e) =>
            e == null ? null : Position.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'positions': instance.positions,
    };
