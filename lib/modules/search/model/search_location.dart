import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_location.freezed.dart';
part 'search_location.g.dart';

@freezed
class SearchLocation with _$SearchLocation {
  const factory SearchLocation({
    @Default([]) List<LocationSearch> locations,
  }) = _SearchLocation;

  factory SearchLocation.fromJson(Map<String, dynamic> json) =>
      _$SearchLocationFromJson(json);
}

@freezed
class LocationSearch with _$LocationSearch {
  const factory LocationSearch({
    required int id,
    @Default('') String name,
    @Default('') String type,
  }) = _LocationSearch;

  factory LocationSearch.fromJson(Map<String, dynamic> json) =>
      _$LocationSearchFromJson(json);
}
