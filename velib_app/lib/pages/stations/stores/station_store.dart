import 'package:mobx/mobx.dart';
import 'package:velib_app/services/bike_services/bike_service.dart';

part 'station_store.g.dart';

class StationStore = _StationStore with _$StationStore;

abstract class _StationStore with Store {
  final BikeService _bikeService;

  _StationStore(this._bikeService);

  @observable
  String stationName = 'Nom de la station';

  @action
  Future getStation(String id) async {
    var station = await _bikeService.getStation(id);
    stationName = station.name;
  }
}
