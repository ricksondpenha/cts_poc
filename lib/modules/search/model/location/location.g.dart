// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Location _$$_LocationFromJson(Map<String, dynamic> json) => _$_Location(
      id: json['id'] as String? ?? '',
      code: json['code'] as String? ?? '',
      name: json['name'] as String? ?? '',
      fullName: json['fullName'] as String? ?? '',
      type: json['type'] as String? ?? '',
      city: json['city'] as String? ?? '',
      state: json['state'] as String? ?? '',
      country: json['country'] as String? ?? '',
      airports: (json['airports'] as List<dynamic>?)
              ?.map((e) => Airport.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'fullName': instance.fullName,
      'type': instance.type,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'airports': instance.airports,
      'runtimeType': instance.$type,
    };

_$LocationFlights _$$LocationFlightsFromJson(Map<String, dynamic> json) =>
    _$LocationFlights(
      id: json['id'] as String? ?? '',
      code: json['code'] as String? ?? '',
      name: json['name'] as String? ?? '',
      fullName: json['fullName'] as String? ?? '',
      airports: (json['airports'] as List<dynamic>?)
              ?.map((e) => Airport.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LocationFlightsToJson(_$LocationFlights instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'fullName': instance.fullName,
      'airports': instance.airports,
      'runtimeType': instance.$type,
    };

_$LocationHotels _$$LocationHotelsFromJson(Map<String, dynamic> json) =>
    _$LocationHotels(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      latLng: Coordinates.fromJson(json['latLng'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LocationHotelsToJson(_$LocationHotels instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'latLng': instance.latLng,
      'runtimeType': instance.$type,
    };

_$_Coordinates _$$_CoordinatesFromJson(Map<String, dynamic> json) =>
    _$_Coordinates(
      lat: (json['lat'] as num?)?.toDouble() ?? 0,
      long: (json['long'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_CoordinatesToJson(_$_Coordinates instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'long': instance.long,
    };
