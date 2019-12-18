import 'location.dart';
import 'station.dart';

class Network {
  String name;
  Location location;
  List<Station> stations;

  static Network fromJson(Map<String, dynamic> json) {
    var map = json['network'] as Map<String, dynamic>;
    var network = Network()
      ..name = map['name'] as String
      ..location = Location.fromJson(map)
      ..stations = Station.listFromJson(map);
    return network;
  }

  @override
  String toString() {
    return '$name ${location.toString()} ${stations.length}';
  }
}
