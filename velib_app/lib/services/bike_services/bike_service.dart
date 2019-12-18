import 'dart:convert';

import 'package:http/http.dart';

import 'dto/network.dart';
import 'dto/station.dart';

class BikeService {
  String url = 'http://api.citybik.es/v2/networks/velov';

  Future<Network> getNetwork() async {
    var response = await get(url);
    var body = response.body;
    var map = jsonDecode(body) as Map<String, dynamic>;
    var network = Network.fromJson(map);
    return network;
  }

  Future<Station> getStation(String id) async {
    var response = await get(url);
    var body = response.body;
    var map = jsonDecode(body) as Map<String, dynamic>;
    var stations = Station.listFromJson(map['network'] as Map<String, dynamic>);
    var station = stations.firstWhere((v) => v.id == id);
    return station;
  }
}
