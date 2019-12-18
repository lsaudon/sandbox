import 'package:mobx/mobx.dart';
import 'package:velib_app/services/bike_services/bike_service.dart';
import 'package:velib_app/services/bike_services/dto/coordinates.dart';
import 'package:velib_app/services/bike_services/dto/station.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  final BikeService _bikeService;

  _HomeStore(this._bikeService);

  @observable
  String networkName = '';

  @observable
  String locationCity = '';

  @observable
  Coordinates locationCoordinates = Coordinates(45.764043, 4.835659);

  @observable
  ObservableList<Station> stations = ObservableList<Station>();

  @computed
  int get stationCount => stations.length;

  @computed
  String get title => '$stationCount stations $networkName à $locationCity';

  @action
  Future getNetwork() async {
    var network = await _bikeService.getNetwork();
    networkName = network.name;
    var location = network.location;
    locationCity = location.city;
    locationCoordinates = location.coordinates;
    stations.addAll(network.stations);
  }
}
