// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchFlights _$$SearchFlightsFromJson(Map<String, dynamic> json) =>
    _$SearchFlights(
      flightType:
          $enumDecodeNullable(_$FlightTripTypeEnumMap, json['flightType']) ??
              FlightTripType.oneWay,
      startLocation: json['startLocation'] == null
          ? null
          : Location.fromJson(json['startLocation'] as Map<String, dynamic>),
      endLocation: json['endLocation'] == null
          ? null
          : Location.fromJson(json['endLocation'] as Map<String, dynamic>),
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      travellers: json['travellers'] == null
          ? null
          : Traveller.fromJson(json['travellers'] as Map<String, dynamic>),
      flightClass:
          $enumDecodeNullable(_$FlightClassEnumMap, json['flightClass']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SearchFlightsToJson(_$SearchFlights instance) =>
    <String, dynamic>{
      'flightType': _$FlightTripTypeEnumMap[instance.flightType],
      'startLocation': instance.startLocation,
      'endLocation': instance.endLocation,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'travellers': instance.travellers,
      'flightClass': _$FlightClassEnumMap[instance.flightClass],
      'runtimeType': instance.$type,
    };

const _$FlightTripTypeEnumMap = {
  FlightTripType.oneWay: 'oneWay',
  FlightTripType.roundTrip: 'roundTrip',
  FlightTripType.multiCity: 'multiCity',
};

const _$FlightClassEnumMap = {
  FlightClass.economyPremiumEconomy: 'economyPremiumEconomy',
  FlightClass.premiumEconomy: 'premiumEconomy',
  FlightClass.business: 'business',
};

_$SearchHotels _$$SearchHotelsFromJson(Map<String, dynamic> json) =>
    _$SearchHotels(
      type: json['type'] as String? ?? 'hotel',
      locationid: json['locationid'] as String? ?? '',
      locationName: json['locationName'] as String? ?? '',
      coordinates: fromBase64toCoordinates(json['coordinates'] as String),
      checkIn: DateTime.parse(json['checkIn'] as String),
      checkOut: DateTime.parse(json['checkOut'] as String),
      occupancies: fromBase64toTravellers(json['occupancies'] as String),
      nationality: json['nationality'] as String?,
      countryOfResidence: json['countryOfResidence'] as String?,
      token: json['token'] as String?,
      correlationId: json['correlationId'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SearchHotelsToJson(_$SearchHotels instance) {
  final val = <String, dynamic>{
    'type': instance.type,
    'locationid': instance.locationid,
    'locationName': instance.locationName,
    'coordinates': toBase64(instance.coordinates),
    'checkIn': customDateFormat(instance.checkIn),
    'checkOut': customDateFormat(instance.checkOut),
    'occupancies': toBase64(instance.occupancies),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('nationality', instance.nationality);
  writeNotNull('countryOfResidence', instance.countryOfResidence);
  writeNotNull('token', instance.token);
  writeNotNull('correlationId', instance.correlationId);
  val['runtimeType'] = instance.$type;
  return val;
}

_$SearchCars _$$SearchCarsFromJson(Map<String, dynamic> json) => _$SearchCars(
      type: $enumDecodeNullable(_$DropOffTypeEnumMap, json['type']) ??
          DropOffType.oneWay,
      startLocation: json['startLocation'] == null
          ? null
          : Location.fromJson(json['startLocation'] as Map<String, dynamic>),
      endLocation: json['endLocation'] == null
          ? null
          : Location.fromJson(json['endLocation'] as Map<String, dynamic>),
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      travellers: json['travellers'] == null
          ? null
          : Traveller.fromJson(json['travellers'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SearchCarsToJson(_$SearchCars instance) =>
    <String, dynamic>{
      'type': _$DropOffTypeEnumMap[instance.type],
      'startLocation': instance.startLocation,
      'endLocation': instance.endLocation,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'travellers': instance.travellers,
      'runtimeType': instance.$type,
    };

const _$DropOffTypeEnumMap = {
  DropOffType.oneWay: 'oneWay',
  DropOffType.returnTrip: 'returnTrip',
};

_$SearchActivities _$$SearchActivitiesFromJson(Map<String, dynamic> json) =>
    _$SearchActivities(
      type: $enumDecodeNullable(_$DropOffTypeEnumMap, json['type']) ??
          DropOffType.oneWay,
      dropOff: json['dropOff'] == null
          ? null
          : Location.fromJson(json['dropOff'] as Map<String, dynamic>),
      pickUpDate: json['pickUpDate'] == null
          ? null
          : DateTime.parse(json['pickUpDate'] as String),
      dropOffDate: json['dropOffDate'] == null
          ? null
          : DateTime.parse(json['dropOffDate'] as String),
      travellers: json['travellers'] == null
          ? null
          : Traveller.fromJson(json['travellers'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SearchActivitiesToJson(_$SearchActivities instance) =>
    <String, dynamic>{
      'type': _$DropOffTypeEnumMap[instance.type],
      'dropOff': instance.dropOff,
      'pickUpDate': instance.pickUpDate?.toIso8601String(),
      'dropOffDate': instance.dropOffDate?.toIso8601String(),
      'travellers': instance.travellers,
      'runtimeType': instance.$type,
    };
