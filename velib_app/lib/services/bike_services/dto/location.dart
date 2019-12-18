import 'coordinates.dart';

class Location {
  String city;
  String country;
  Coordinates coordinates;

  static Location fromJson(Map<String, dynamic> json) {
    var map = json['location'] as Map<String, dynamic>;
    var location = Location()
      ..city = map['city'] as String
      ..country = map['country'] as String
      ..coordinates = Coordinates.fromJson(map);
    return location;
  }

  @override
  String toString() {
    return '$city $country';
  }
}
