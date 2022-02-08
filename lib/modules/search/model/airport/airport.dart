import 'package:freezed_annotation/freezed_annotation.dart';
part 'airport.freezed.dart';
part 'airport.g.dart';

@freezed
class Airport with _$Airport {
  const factory Airport({
    @Default('') String? code,
    @Default('') String? type,
    @Default('') String? name,
  }) = _Airport;

  factory Airport.fromJson(Map<String, dynamic> json) =>
      _$AirportFromJson(json);
}
