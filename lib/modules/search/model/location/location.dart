import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cts_poc/utils/url_handlers.dart';
import '../models.dart';
part 'location.freezed.dart';
part 'location.g.dart';

@freezed
class Location with _$Location {
  const factory Location({
    @Default('') String id,
    @Default('') String code,
    @Default('') String name,
    @Default('') String fullName,
    @Default('') String type,
    @Default('') String city,
    @Default('') String state,
    @Default('') String country,
    @Default([]) List<Airport> airports,
  }) = _Location;

  const factory Location.flights({
    @Default('') String id,
    @Default('') String code,
    @Default('') String name,
    @Default('') String fullName,
    @Default([]) List<Airport> airports,
  }) = LocationFlights;

  const factory Location.hotels({
    @Default('') String id,
    @Default('') String name,
    required Coordinates latLng,
  }) = LocationHotels;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class Coordinates with _$Coordinates {
  const factory Coordinates({
    @Default(0) double lat,
    @Default(0) double long,
  }) = _Coordinates;

  factory Coordinates.fromBase64(String data) =>
      Coordinates.fromJson(fromBase64toMap(data));

  factory Coordinates.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesFromJson(json);
}

Coordinates fromBase64toCoordinates(String data) =>
    Coordinates.fromBase64(data);
