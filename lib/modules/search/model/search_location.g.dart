// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchLocation _$$_SearchLocationFromJson(Map<String, dynamic> json) =>
    _$_SearchLocation(
      locations: (json['locations'] as List<dynamic>?)
              ?.map((e) => LocationSearch.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_SearchLocationToJson(_$_SearchLocation instance) =>
    <String, dynamic>{
      'locations': instance.locations,
    };

_$_LocationSearch _$$_LocationSearchFromJson(Map<String, dynamic> json) =>
    _$_LocationSearch(
      id: json['id'] as int,
      name: json['name'] as String? ?? '',
      type: json['type'] as String? ?? '',
    );

Map<String, dynamic> _$$_LocationSearchToJson(_$_LocationSearch instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
    };
