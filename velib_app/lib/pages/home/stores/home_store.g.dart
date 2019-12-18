// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStore, Store {
  Computed<int> _$stationCountComputed;

  @override
  int get stationCount =>
      (_$stationCountComputed ??= Computed<int>(() => super.stationCount))
          .value;
  Computed<String> _$titleComputed;

  @override
  String get title =>
      (_$titleComputed ??= Computed<String>(() => super.title)).value;

  final _$networkNameAtom = Atom(name: '_HomeStore.networkName');

  @override
  String get networkName {
    _$networkNameAtom.context.enforceReadPolicy(_$networkNameAtom);
    _$networkNameAtom.reportObserved();
    return super.networkName;
  }

  @override
  set networkName(String value) {
    _$networkNameAtom.context.conditionallyRunInAction(() {
      super.networkName = value;
      _$networkNameAtom.reportChanged();
    }, _$networkNameAtom, name: '${_$networkNameAtom.name}_set');
  }

  final _$locationCityAtom = Atom(name: '_HomeStore.locationCity');

  @override
  String get locationCity {
    _$locationCityAtom.context.enforceReadPolicy(_$locationCityAtom);
    _$locationCityAtom.reportObserved();
    return super.locationCity;
  }

  @override
  set locationCity(String value) {
    _$locationCityAtom.context.conditionallyRunInAction(() {
      super.locationCity = value;
      _$locationCityAtom.reportChanged();
    }, _$locationCityAtom, name: '${_$locationCityAtom.name}_set');
  }

  final _$locationCoordinatesAtom =
      Atom(name: '_HomeStore.locationCoordinates');

  @override
  Coordinates get locationCoordinates {
    _$locationCoordinatesAtom.context
        .enforceReadPolicy(_$locationCoordinatesAtom);
    _$locationCoordinatesAtom.reportObserved();
    return super.locationCoordinates;
  }

  @override
  set locationCoordinates(Coordinates value) {
    _$locationCoordinatesAtom.context.conditionallyRunInAction(() {
      super.locationCoordinates = value;
      _$locationCoordinatesAtom.reportChanged();
    }, _$locationCoordinatesAtom,
        name: '${_$locationCoordinatesAtom.name}_set');
  }

  final _$stationsAtom = Atom(name: '_HomeStore.stations');

  @override
  ObservableList<Station> get stations {
    _$stationsAtom.context.enforceReadPolicy(_$stationsAtom);
    _$stationsAtom.reportObserved();
    return super.stations;
  }

  @override
  set stations(ObservableList<Station> value) {
    _$stationsAtom.context.conditionallyRunInAction(() {
      super.stations = value;
      _$stationsAtom.reportChanged();
    }, _$stationsAtom, name: '${_$stationsAtom.name}_set');
  }

  final _$getNetworkAsyncAction = AsyncAction('getNetwork');

  @override
  Future getNetwork() {
    return _$getNetworkAsyncAction.run(() => super.getNetwork());
  }
}
