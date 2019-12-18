import 'coordinates.dart';

class Station {
  String id;
  String name;
  Coordinates coordinates;
  Status status;

  static List<Station> listFromJson(Map<String, dynamic> json) {
    var stations = <Station>[];
    json['stations'].forEach(
      (v) => stations.add(Station.fromJson(v)),
    );
    return stations;
  }

  static Station fromJson(Map<String, dynamic> json) {
    var station = Station()
      ..id = json['id'] as String
      ..name = json['name'] as String
      ..coordinates = Coordinates.fromJson(json)
      ..status =
          json['extra']['status'] == 'OPEN' ? Status.OPEN : Status.CLOSED;
    return station;
  }

  @override
  String toString() {
    return name;
  }
}

enum Status {
  CLOSED,
  OPEN,
}
