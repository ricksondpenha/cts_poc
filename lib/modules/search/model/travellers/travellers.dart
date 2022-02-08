import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../utils/url_handlers.dart';
part 'travellers.freezed.dart';
part 'travellers.g.dart';

@freezed
class Travellers with _$Travellers {
  const factory Travellers({
    required List<Traveller> travellers,
  }) = _Travellers;
}

@freezed
class Traveller with _$Traveller {
  const factory Traveller.flight({
    @Default(1) int adults,
    @Default(0) int child,
    @Default(0) int infants,
  }) = TravellersFlight;

  const factory Traveller.hotel({
    @Default(1) int numOfAdults,
    @JsonKey(includeIfNull: false) List<int>? childAges,
  }) = TravellersHotel;

  factory Traveller.fromBase64(String data) =>
      Traveller.fromJson(fromBase64toMap(data));

  factory Traveller.fromJson(Map<String, dynamic> json) =>
      _$TravellerFromJson(json);
}

List<TravellersHotel> fromBase64toTravellers(String data) =>
    fromBase64toList(data).map((e) => TravellersHotel.fromJson(e)).toList();
