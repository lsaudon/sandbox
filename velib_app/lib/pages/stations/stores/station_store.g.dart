// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StationStore on _StationStore, Store {
  final _$stationNameAtom = Atom(name: '_StationStore.stationName');

  @override
  String get stationName {
    _$stationNameAtom.context.enforceReadPolicy(_$stationNameAtom);
    _$stationNameAtom.reportObserved();
    return super.stationName;
  }

  @override
  set stationName(String value) {
    _$stationNameAtom.context.conditionallyRunInAction(() {
      super.stationName = value;
      _$stationNameAtom.reportChanged();
    }, _$stationNameAtom, name: '${_$stationNameAtom.name}_set');
  }

  final _$getStationAsyncAction = AsyncAction('getStation');

  @override
  Future getStation(String id) {
    return _$getStationAsyncAction.run(() => super.getStation(id));
  }
}
