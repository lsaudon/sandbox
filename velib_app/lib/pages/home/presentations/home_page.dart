import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:latlong/latlong.dart';
import 'package:provider/provider.dart';
import 'package:velib_app/pages/home/stores/home_store.dart';
import 'package:velib_app/pages/stations/presentations/station_page.dart';
import 'package:velib_app/services/bike_services/bike_service.dart';
import 'package:velib_app/services/bike_services/dto/station.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeStore _homeStore;

  @override
  void didChangeDependencies() {
    var bikeService = Provider.of<BikeService>(context);
    _homeStore = HomeStore(bikeService)..getNetwork();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Observer(
          builder: (_) => Text(
            _homeStore.title,
          ),
        ),
      ),
      body: Container(
        child: Observer(
          builder: (_) {
            var stations = _homeStore.stations;
            var markers = <Marker>[];
            for (var station in stations) {
              var marker = Marker(
                width: 32.0,
                height: 32.0,
                point: LatLng(
                  station.coordinates.latitude,
                  station.coordinates.longitude,
                ),
                builder: (_) => InkWell(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute<StationPage>(
                      builder: (context) => StationPage(id: station.id),
                    ),
                  ),
                  child: Container(
                    width: 32.0,
                    height: 32.0,
                    child: Icon(
                      Icons.room,
                      color: station.status == Status.OPEN
                          ? Colors.black
                          : Colors.grey,
                    ),
                  ),
                ),
              );
              markers.add(marker);
            }
            var locationCoordinates = _homeStore.locationCoordinates;
            return FlutterMap(
              options: MapOptions(
                center: LatLng(
                  locationCoordinates.latitude,
                  locationCoordinates.longitude,
                ),
                zoom: 12,
                minZoom: 0,
                maxZoom: 19,
              ),
              layers: [
                TileLayerOptions(
                  urlTemplate:
                      'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                  subdomains: ['a', 'b', 'c'],
                ),
                MarkerLayerOptions(
                  markers: markers ?? [],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
