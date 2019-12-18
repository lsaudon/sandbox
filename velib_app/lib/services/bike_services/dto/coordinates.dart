class Coordinates {
  double latitude;
  double longitude;

  Coordinates(this.latitude, this.longitude);

  static Coordinates fromJson(Map<String, dynamic> json) {
    return Coordinates(json['latitude'] as double, json['longitude'] as double);
  }
}
