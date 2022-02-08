import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../model/search_location.dart';
import '../../repository/search_repo.dart';
import '../../model/location1/locations_model.dart';
import '../../repository/location/location_repository.dart';

final getLocatoionProvider =
    FutureProvider<LocationsModel>((ref) => getLocations());

final locationsProvider = FutureProvider<SearchLocation>((ref) async {
  final locations = await ref.read(searchRepository).locations();
  final locationresult = SearchLocation.fromJson(locations!);
  debugPrint(locationresult.locations.toString());
  return locationresult;
});
