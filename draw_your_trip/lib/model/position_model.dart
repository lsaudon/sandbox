import 'package:json_annotation/json_annotation.dart';

part 'position_model.g.dart';

@JsonSerializable()
class Position {
  Position(this.positionDate, this.latitude, this.longitude, this.altitude);

  factory Position.fromJson(Map<String, dynamic> json) =>
      _$PositionFromJson(json);

  final DateTime positionDate;
  final double latitude;
  final double longitude;
  final double altitude;

  Map<String, dynamic> toJson() => _$PositionToJson(this);

  @override
  String toString() {
    return 'Position{positionDate: $positionDate, latitude: $latitude, longitude: $longitude, altitude: $altitude}';
  }
}

@JsonSerializable()
class Data {
  Data(this.positions);

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  final List<Position> positions;

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
