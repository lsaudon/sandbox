import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:path_provider/path_provider.dart';

import 'model/position_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(
        dataStorage: DataStorage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.dataStorage}) : super(key: key);

  final DataStorage dataStorage;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MapController mapController;
  List<LatLng> points = <LatLng>[];

  @override
  void initState() {
    super.initState();

    final List<Position> positions = <Position>[];

    for (int i = 0; i < 10; i++) {
      positions.add(
        Position(
          DateTime.now(),
          i.toDouble(),
          i.toDouble(),
          i.toDouble(),
        ),
      );
    }

    final String dataToJson = json.encode(Data(positions));
    widget.dataStorage.writeData(dataToJson);

    widget.dataStorage.readData().then(
      (String value) {
        if (value != null) {
          final Data data = Data.fromJson(json.decode(value));
          for (var position in data.positions) {
            points.add(LatLng(position.latitude, position.longitude));
          }
        }
      },
    );

    mapController = MapController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          FlutterMap(
            mapController: mapController,
            options: MapOptions(
              center: LatLng(0, 0),
              zoom: 5.0,
              maxZoom: 19.0,
              minZoom: 2.0,
            ),
            layers: [
              TileLayerOptions(
                urlTemplate:
                    'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                subdomains: ['a', 'b', 'c'],
              ),
              PolylineLayerOptions(
                polylines: [
                  Polyline(
                    points: points,
                    strokeWidth: 4.0,
                    color: Colors.purple,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class DataStorage {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/data.json');
  }

  Future<File> writeData(String data) async {
    final file = await _localFile;
    return file.writeAsString(data);
  }

  Future<String> readData() async {
    try {
      final file = await _localFile;
      final String contents = await file.readAsString();
      return contents;
    } catch (e) {
      debugPrint(e);
      return null;
    }
  }
}
