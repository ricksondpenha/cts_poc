import 'package:freezed_annotation/freezed_annotation.dart';
import '../models.dart';
import '../../../../utils/custom_date_format.dart';
import '../../../../utils/url_handlers.dart';

part 'search_query.freezed.dart';
part 'search_query.g.dart';

@freezed
class SearchQuery with _$SearchQuery {
  const factory SearchQuery.flights({
    @Default(FlightTripType.oneWay) FlightTripType flightType,
    Location? startLocation,
    Location? endLocation,
    DateTime? startDate,
    DateTime? endDate,
    Traveller? travellers,
    FlightClass? flightClass,
  }) = SearchFlights;

  const factory SearchQuery.hotels({
    @Default('hotel') String type,
    @Default('') String locationid,
    @Default('') String locationName,
    @JsonKey(toJson: toBase64, fromJson: fromBase64toCoordinates)
        required Coordinates coordinates,
    @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
        required DateTime checkIn,
    @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
        required DateTime checkOut,
    @JsonKey(toJson: toBase64, fromJson: fromBase64toTravellers)
        required List<TravellersHotel> occupancies,
    @JsonKey(includeIfNull: false) String? nationality,
    @JsonKey(includeIfNull: false) String? countryOfResidence,
    @JsonKey(includeIfNull: false) String? token,
    @JsonKey(includeIfNull: false) String? correlationId,
  }) = SearchHotels;

  const factory SearchQuery.cars({
    @Default(DropOffType.oneWay) DropOffType type,
    Location? startLocation,
    Location? endLocation,
    DateTime? startDate,
    DateTime? endDate,
    Traveller? travellers,
  }) = SearchCars;

  const factory SearchQuery.activities({
    @Default(DropOffType.oneWay) DropOffType type,
    Location? dropOff,
    DateTime? pickUpDate,
    DateTime? dropOffDate,
    Traveller? travellers,
  }) = SearchActivities;

  factory SearchQuery.fromJson(json) => _$SearchQueryFromJson(json);
}
