// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travellers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TravellersFlight _$$TravellersFlightFromJson(Map<String, dynamic> json) =>
    _$TravellersFlight(
      adults: json['adults'] as int? ?? 1,
      child: json['child'] as int? ?? 0,
      infants: json['infants'] as int? ?? 0,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TravellersFlightToJson(_$TravellersFlight instance) =>
    <String, dynamic>{
      'adults': instance.adults,
      'child': instance.child,
      'infants': instance.infants,
      'runtimeType': instance.$type,
    };

_$TravellersHotel _$$TravellersHotelFromJson(Map<String, dynamic> json) =>
    _$TravellersHotel(
      numOfAdults: json['numOfAdults'] as int? ?? 1,
      childAges:
          (json['childAges'] as List<dynamic>?)?.map((e) => e as int).toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TravellersHotelToJson(_$TravellersHotel instance) {
  final val = <String, dynamic>{
    'numOfAdults': instance.numOfAdults,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('childAges', instance.childAges);
  val['runtimeType'] = instance.$type;
  return val;
}
