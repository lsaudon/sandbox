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
  final DataStorage dataStorage;

  const MyHomePage({Key key, this.dataStorage}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MapController mapController;

  @override
  void initState() {
    super.initState();

    List<Position> positions = List<Position>();
    positions.add(Position(DateTime.now(), 0.0, 0.0, 0.0));
    positions.add(Position(DateTime.now(), 1.0, 1.0, 1.0));

    var data = Data(positions);
    var dataToJson = json.encode(data);
    widget.dataStorage.writeData(dataToJson);

    widget.dataStorage.readData().then((String value) {
      if (value != null) {
        debugPrint(value);
        Data data = Data.fromJson(json.decode(value));
        debugPrint('${data.positions[0]}');
        debugPrint('${data.positions[1]}');
      }
    });

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
              center: LatLng(51.5, -0.09),
              zoom: 5.0,
              maxZoom: 19.0,
              minZoom: 2.0,
            ),
            layers: [
              TileLayerOptions(
                  urlTemplate:
                      'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                  subdomains: ['a', 'b', 'c']),
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
      String contents = await file.readAsString();
      return contents;
    } catch (e) {
      return null;
    }
  }
}
