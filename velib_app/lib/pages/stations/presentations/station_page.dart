import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:velib_app/pages/stations/stores/station_store.dart';
import 'package:velib_app/services/bike_services/bike_service.dart';

class StationPage extends StatefulWidget {
  final String id;

  StationPage({Key key, @required this.id})
      : assert(id != null),
        super(key: key);

  @override
  _StationPageState createState() => _StationPageState();
}

class _StationPageState extends State<StationPage> {
  StationStore _stationStore;

  @override
  void didChangeDependencies() {
    var bikeService = Provider.of<BikeService>(context);
    _stationStore = StationStore(bikeService)..getStation(widget.id);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Observer(
          builder: (_) => Text(
            _stationStore.stationName,
          ),
        ),
      ),
      body: Container(),
    );
  }
}
