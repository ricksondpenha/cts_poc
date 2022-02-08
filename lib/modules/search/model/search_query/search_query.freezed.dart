// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchQuery _$SearchQueryFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'flights':
      return SearchFlights.fromJson(json);
    case 'hotels':
      return SearchHotels.fromJson(json);
    case 'cars':
      return SearchCars.fromJson(json);
    case 'activities':
      return SearchActivities.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'SearchQuery',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$SearchQueryTearOff {
  const _$SearchQueryTearOff();

  SearchFlights flights(
      {FlightTripType flightType = FlightTripType.oneWay,
      Location? startLocation,
      Location? endLocation,
      DateTime? startDate,
      DateTime? endDate,
      Traveller? travellers,
      FlightClass? flightClass}) {
    return SearchFlights(
      flightType: flightType,
      startLocation: startLocation,
      endLocation: endLocation,
      startDate: startDate,
      endDate: endDate,
      travellers: travellers,
      flightClass: flightClass,
    );
  }

  SearchHotels hotels(
      {String type = 'hotel',
      String locationid = '',
      String locationName = '',
      @JsonKey(toJson: toBase64, fromJson: fromBase64toCoordinates)
          required Coordinates coordinates,
      @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
          required DateTime checkIn,
      @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
          required DateTime checkOut,
      @JsonKey(toJson: toBase64, fromJson: fromBase64toTravellers)
          required List<TravellersHotel> occupancies,
      @JsonKey(includeIfNull: false)
          String? nationality,
      @JsonKey(includeIfNull: false)
          String? countryOfResidence,
      @JsonKey(includeIfNull: false)
          String? token,
      @JsonKey(includeIfNull: false)
          String? correlationId}) {
    return SearchHotels(
      type: type,
      locationid: locationid,
      locationName: locationName,
      coordinates: coordinates,
      checkIn: checkIn,
      checkOut: checkOut,
      occupancies: occupancies,
      nationality: nationality,
      countryOfResidence: countryOfResidence,
      token: token,
      correlationId: correlationId,
    );
  }

  SearchCars cars(
      {DropOffType type = DropOffType.oneWay,
      Location? startLocation,
      Location? endLocation,
      DateTime? startDate,
      DateTime? endDate,
      Traveller? travellers}) {
    return SearchCars(
      type: type,
      startLocation: startLocation,
      endLocation: endLocation,
      startDate: startDate,
      endDate: endDate,
      travellers: travellers,
    );
  }

  SearchActivities activities(
      {DropOffType type = DropOffType.oneWay,
      Location? dropOff,
      DateTime? pickUpDate,
      DateTime? dropOffDate,
      Traveller? travellers}) {
    return SearchActivities(
      type: type,
      dropOff: dropOff,
      pickUpDate: pickUpDate,
      dropOffDate: dropOffDate,
      travellers: travellers,
    );
  }

  SearchQuery fromJson(Map<String, Object?> json) {
    return SearchQuery.fromJson(json);
  }
}

/// @nodoc
const $SearchQuery = _$SearchQueryTearOff();

/// @nodoc
mixin _$SearchQuery {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            FlightTripType flightType,
            Location? startLocation,
            Location? endLocation,
            DateTime? startDate,
            DateTime? endDate,
            Traveller? travellers,
            FlightClass? flightClass)
        flights,
    required TResult Function(
            String type,
            String locationid,
            String locationName,
            @JsonKey(toJson: toBase64, fromJson: fromBase64toCoordinates)
                Coordinates coordinates,
            @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
                DateTime checkIn,
            @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
                DateTime checkOut,
            @JsonKey(toJson: toBase64, fromJson: fromBase64toTravellers)
                List<TravellersHotel> occupancies,
            @JsonKey(includeIfNull: false)
                String? nationality,
            @JsonKey(includeIfNull: false)
                String? countryOfResidence,
            @JsonKey(includeIfNull: false)
                String? token,
            @JsonKey(includeIfNull: false)
                String? correlationId)
        hotels,
    required TResult Function(
            DropOffType type,
            Location? startLocation,
            Location? endLocation,
            DateTime? startDate,
            DateTime? endDate,
            Traveller? travellers)
        cars,
    required TResult Function(DropOffType type, Location? dropOff,
            DateTime? pickUpDate, DateTime? dropOffDate, Traveller? travellers)
        activities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            FlightTripType flightType,
            Location? startLocation,
            Location? endLocation,
            DateTime? startDate,
            DateTime? endDate,
            Traveller? travellers,
            FlightClass? flightClass)?
        flights,
    TResult Function(
            String type,
            String locationid,
            String locationName,
            @JsonKey(toJson: toBase64, fromJson: fromBase64toCoordinates)
                Coordinates coordinates,
            @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
                DateTime checkIn,
            @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
                DateTime checkOut,
            @JsonKey(toJson: toBase64, fromJson: fromBase64toTravellers)
                List<TravellersHotel> occupancies,
            @JsonKey(includeIfNull: false)
                String? nationality,
            @JsonKey(includeIfNull: false)
                String? countryOfResidence,
            @JsonKey(includeIfNull: false)
                String? token,
            @JsonKey(includeIfNull: false)
                String? correlationId)?
        hotels,
    TResult Function(
            DropOffType type,
            Location? startLocation,
            Location? endLocation,
            DateTime? startDate,
            DateTime? endDate,
            Traveller? travellers)?
        cars,
    TResult Function(DropOffType type, Location? dropOff, DateTime? pickUpDate,
            DateTime? dropOffDate, Traveller? travellers)?
        activities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            FlightTripType flightType,
            Location? startLocation,
            Location? endLocation,
            DateTime? startDate,
            DateTime? endDate,
            Traveller? travellers,
            FlightClass? flightClass)?
        flights,
    TResult Function(
            String type,
            String locationid,
            String locationName,
            @JsonKey(toJson: toBase64, fromJson: fromBase64toCoordinates)
                Coordinates coordinates,
            @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
                DateTime checkIn,
            @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
                DateTime checkOut,
            @JsonKey(toJson: toBase64, fromJson: fromBase64toTravellers)
                List<TravellersHotel> occupancies,
            @JsonKey(includeIfNull: false)
                String? nationality,
            @JsonKey(includeIfNull: false)
                String? countryOfResidence,
            @JsonKey(includeIfNull: false)
                String? token,
            @JsonKey(includeIfNull: false)
                String? correlationId)?
        hotels,
    TResult Function(
            DropOffType type,
            Location? startLocation,
            Location? endLocation,
            DateTime? startDate,
            DateTime? endDate,
            Traveller? travellers)?
        cars,
    TResult Function(DropOffType type, Location? dropOff, DateTime? pickUpDate,
            DateTime? dropOffDate, Traveller? travellers)?
        activities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchFlights value) flights,
    required TResult Function(SearchHotels value) hotels,
    required TResult Function(SearchCars value) cars,
    required TResult Function(SearchActivities value) activities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchFlights value)? flights,
    TResult Function(SearchHotels value)? hotels,
    TResult Function(SearchCars value)? cars,
    TResult Function(SearchActivities value)? activities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchFlights value)? flights,
    TResult Function(SearchHotels value)? hotels,
    TResult Function(SearchCars value)? cars,
    TResult Function(SearchActivities value)? activities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchQueryCopyWith<$Res> {
  factory $SearchQueryCopyWith(
          SearchQuery value, $Res Function(SearchQuery) then) =
      _$SearchQueryCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchQueryCopyWithImpl<$Res> implements $SearchQueryCopyWith<$Res> {
  _$SearchQueryCopyWithImpl(this._value, this._then);

  final SearchQuery _value;
  // ignore: unused_field
  final $Res Function(SearchQuery) _then;
}

/// @nodoc
abstract class $SearchFlightsCopyWith<$Res> {
  factory $SearchFlightsCopyWith(
          SearchFlights value, $Res Function(SearchFlights) then) =
      _$SearchFlightsCopyWithImpl<$Res>;
  $Res call(
      {FlightTripType flightType,
      Location? startLocation,
      Location? endLocation,
      DateTime? startDate,
      DateTime? endDate,
      Traveller? travellers,
      FlightClass? flightClass});

  $LocationCopyWith<$Res>? get startLocation;
  $LocationCopyWith<$Res>? get endLocation;
  $TravellerCopyWith<$Res>? get travellers;
}

/// @nodoc
class _$SearchFlightsCopyWithImpl<$Res> extends _$SearchQueryCopyWithImpl<$Res>
    implements $SearchFlightsCopyWith<$Res> {
  _$SearchFlightsCopyWithImpl(
      SearchFlights _value, $Res Function(SearchFlights) _then)
      : super(_value, (v) => _then(v as SearchFlights));

  @override
  SearchFlights get _value => super._value as SearchFlights;

  @override
  $Res call({
    Object? flightType = freezed,
    Object? startLocation = freezed,
    Object? endLocation = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? travellers = freezed,
    Object? flightClass = freezed,
  }) {
    return _then(SearchFlights(
      flightType: flightType == freezed
          ? _value.flightType
          : flightType // ignore: cast_nullable_to_non_nullable
              as FlightTripType,
      startLocation: startLocation == freezed
          ? _value.startLocation
          : startLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      endLocation: endLocation == freezed
          ? _value.endLocation
          : endLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      travellers: travellers == freezed
          ? _value.travellers
          : travellers // ignore: cast_nullable_to_non_nullable
              as Traveller?,
      flightClass: flightClass == freezed
          ? _value.flightClass
          : flightClass // ignore: cast_nullable_to_non_nullable
              as FlightClass?,
    ));
  }

  @override
  $LocationCopyWith<$Res>? get startLocation {
    if (_value.startLocation == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.startLocation!, (value) {
      return _then(_value.copyWith(startLocation: value));
    });
  }

  @override
  $LocationCopyWith<$Res>? get endLocation {
    if (_value.endLocation == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.endLocation!, (value) {
      return _then(_value.copyWith(endLocation: value));
    });
  }

  @override
  $TravellerCopyWith<$Res>? get travellers {
    if (_value.travellers == null) {
      return null;
    }

    return $TravellerCopyWith<$Res>(_value.travellers!, (value) {
      return _then(_value.copyWith(travellers: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchFlights implements SearchFlights {
  const _$SearchFlights(
      {this.flightType = FlightTripType.oneWay,
      this.startLocation,
      this.endLocation,
      this.startDate,
      this.endDate,
      this.travellers,
      this.flightClass,
      String? $type})
      : $type = $type ?? 'flights';

  factory _$SearchFlights.fromJson(Map<String, dynamic> json) =>
      _$$SearchFlightsFromJson(json);

  @JsonKey()
  @override
  final FlightTripType flightType;
  @override
  final Location? startLocation;
  @override
  final Location? endLocation;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final Traveller? travellers;
  @override
  final FlightClass? flightClass;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SearchQuery.flights(flightType: $flightType, startLocation: $startLocation, endLocation: $endLocation, startDate: $startDate, endDate: $endDate, travellers: $travellers, flightClass: $flightClass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchFlights &&
            const DeepCollectionEquality()
                .equals(other.flightType, flightType) &&
            const DeepCollectionEquality()
                .equals(other.startLocation, startLocation) &&
            const DeepCollectionEquality()
                .equals(other.endLocation, endLocation) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality()
                .equals(other.travellers, travellers) &&
            const DeepCollectionEquality()
                .equals(other.flightClass, flightClass));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(flightType),
      const DeepCollectionEquality().hash(startLocation),
      const DeepCollectionEquality().hash(endLocation),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(travellers),
      const DeepCollectionEquality().hash(flightClass));

  @JsonKey(ignore: true)
  @override
  $SearchFlightsCopyWith<SearchFlights> get copyWith =>
      _$SearchFlightsCopyWithImpl<SearchFlights>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            FlightTripType flightType,
            Location? startLocation,
            Location? endLocation,
            DateTime? startDate,
            DateTime? endDate,
            Traveller? travellers,
            FlightClass? flightClass)
        flights,
    required TResult Function(
            String type,
            String locationid,
            String locationName,
            @JsonKey(toJson: toBase64, fromJson: fromBase64toCoordinates)
                Coordinates coordinates,
            @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
                DateTime checkIn,
            @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
                DateTime checkOut,
            @JsonKey(toJson: toBase64, fromJson: fromBase64toTravellers)
                List<TravellersHotel> occupancies,
            @JsonKey(includeIfNull: false)
                String? nationality,
            @JsonKey(includeIfNull: false)
                String? countryOfResidence,
            @JsonKey(includeIfNull: false)
                String? token,
            @JsonKey(includeIfNull: false)
                String? correlationId)
        hotels,
    required TResult Function(
            DropOffType type,
            Location? startLocation,
            Location? endLocation,
            DateTime? startDate,
            DateTime? endDate,
            Traveller? travellers)
        cars,
    required TResult Function(DropOffType type, Location? dropOff,
            DateTime? pickUpDate, DateTime? dropOffDate, Traveller? travellers)
        activities,
  }) {
    return flights(flightType, startLocation, endLocation, startDate, endDate,
        travellers, flightClass);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            FlightTripType flightType,
            Location? startLocation,
            Location? endLocation,
            DateTime? startDate,
            DateTime? endDate,
            Traveller? travellers,
            FlightClass? flightClass)?
        flights,
    TResult Function(
            String type,
            String locationid,
            String locationName,
            @JsonKey(toJson: toBase64, fromJson: fromBase64toCoordinates)
                Coordinates coordinates,
            @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
                DateTime checkIn,
            @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
                DateTime checkOut,
            @JsonKey(toJson: toBase64, fromJson: fromBase64toTravellers)
                List<TravellersHotel> occupancies,
            @JsonKey(includeIfNull: false)
                String? nationality,
            @JsonKey(includeIfNull: false)
                String? countryOfResidence,
            @JsonKey(includeIfNull: false)
                String? token,
            @JsonKey(includeIfNull: false)
                String? correlationId)?
        hotels,
    TResult Function(
            DropOffType type,
            Location? startLocation,
            Location? endLocation,
            DateTime? startDate,
            DateTime? endDate,
            Traveller? travellers)?
        cars,
    TResult Function(DropOffType type, Location? dropOff, DateTime? pickUpDate,
            DateTime? dropOffDate, Traveller? travellers)?
        activities,
  }) {
    return flights?.call(flightType, startLocation, endLocation, startDate,
        endDate, travellers, flightClass);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            FlightTripType flightType,
            Location? startLocation,
            Location? endLocation,
            DateTime? startDate,
            DateTime? endDate,
            Traveller? travellers,
            FlightClass? flightClass)?
        flights,
    TResult Function(
            String type,
            String locationid,
            String locationName,
            @JsonKey(toJson: toBase64, fromJson: fromBase64toCoordinates)
                Coordinates coordinates,
            @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
                DateTime checkIn,
            @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
                DateTime checkOut,
            @JsonKey(toJson: toBase64, fromJson: fromBase64toTravellers)
                List<TravellersHotel> occupancies,
            @JsonKey(includeIfNull: false)
                String? nationality,
            @JsonKey(includeIfNull: false)
                String? countryOfResidence,
            @JsonKey(includeIfNull: false)
                String? token,
            @JsonKey(includeIfNull: false)
                String? correlationId)?
        hotels,
    TResult Function(
            DropOffType type,
            Location? startLocation,
            Location? endLocation,
            DateTime? startDate,
            DateTime? endDate,
            Traveller? travellers)?
        cars,
    TResult Function(DropOffType type, Location? dropOff, DateTime? pickUpDate,
            DateTime? dropOffDate, Traveller? travellers)?
        activities,
    required TResult orElse(),
  }) {
    if (flights != null) {
      return flights(flightType, startLocation, endLocation, startDate, endDate,
          travellers, flightClass);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchFlights value) flights,
    required TResult Function(SearchHotels value) hotels,
    required TResult Function(SearchCars value) cars,
    required TResult Function(SearchActivities value) activities,
  }) {
    return flights(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchFlights value)? flights,
    TResult Function(SearchHotels value)? hotels,
    TResult Function(SearchCars value)? cars,
    TResult Function(SearchActivities value)? activities,
  }) {
    return flights?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchFlights value)? flights,
    TResult Function(SearchHotels value)? hotels,
    TResult Function(SearchCars value)? cars,
    TResult Function(SearchActivities value)? activities,
    required TResult orElse(),
  }) {
    if (flights != null) {
      return flights(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchFlightsToJson(this);
  }
}

abstract class SearchFlights implements SearchQuery {
  const factory SearchFlights(
      {FlightTripType flightType,
      Location? startLocation,
      Location? endLocation,
      DateTime? startDate,
      DateTime? endDate,
      Traveller? travellers,
      FlightClass? flightClass}) = _$SearchFlights;

  factory SearchFlights.fromJson(Map<String, dynamic> json) =
      _$SearchFlights.fromJson;

  FlightTripType get flightType;
  Location? get startLocation;
  Location? get endLocation;
  DateTime? get startDate;
  DateTime? get endDate;
  Traveller? get travellers;
  FlightClass? get flightClass;
  @JsonKey(ignore: true)
  $SearchFlightsCopyWith<SearchFlights> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchHotelsCopyWith<$Res> {
  factory $SearchHotelsCopyWith(
          SearchHotels value, $Res Function(SearchHotels) then) =
      _$SearchHotelsCopyWithImpl<$Res>;
  $Res call(
      {String type,
      String locationid,
      String locationName,
      @JsonKey(toJson: toBase64, fromJson: fromBase64toCoordinates)
          Coordinates coordinates,
      @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
          DateTime checkIn,
      @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
          DateTime checkOut,
      @JsonKey(toJson: toBase64, fromJson: fromBase64toTravellers)
          List<TravellersHotel> occupancies,
      @JsonKey(includeIfNull: false)
          String? nationality,
      @JsonKey(includeIfNull: false)
          String? countryOfResidence,
      @JsonKey(includeIfNull: false)
          String? token,
      @JsonKey(includeIfNull: false)
          String? correlationId});

  $CoordinatesCopyWith<$Res> get coordinates;
}

/// @nodoc
class _$SearchHotelsCopyWithImpl<$Res> extends _$SearchQueryCopyWithImpl<$Res>
    implements $SearchHotelsCopyWith<$Res> {
  _$SearchHotelsCopyWithImpl(
      SearchHotels _value, $Res Function(SearchHotels) _then)
      : super(_value, (v) => _then(v as SearchHotels));

  @override
  SearchHotels get _value => super._value as SearchHotels;

  @override
  $Res call({
    Object? type = freezed,
    Object? locationid = freezed,
    Object? locationName = freezed,
    Object? coordinates = freezed,
    Object? checkIn = freezed,
    Object? checkOut = freezed,
    Object? occupancies = freezed,
    Object? nationality = freezed,
    Object? countryOfResidence = freezed,
    Object? token = freezed,
    Object? correlationId = freezed,
  }) {
    return _then(SearchHotels(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      locationid: locationid == freezed
          ? _value.locationid
          : locationid // ignore: cast_nullable_to_non_nullable
              as String,
      locationName: locationName == freezed
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates,
      checkIn: checkIn == freezed
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      checkOut: checkOut == freezed
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as DateTime,
      occupancies: occupancies == freezed
          ? _value.occupancies
          : occupancies // ignore: cast_nullable_to_non_nullable
              as List<TravellersHotel>,
      nationality: nationality == freezed
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      countryOfResidence: countryOfResidence == freezed
          ? _value.countryOfResidence
          : countryOfResidence // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      correlationId: correlationId == freezed
          ? _value.correlationId
          : correlationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $CoordinatesCopyWith<$Res> get coordinates {
    return $CoordinatesCopyWith<$Res>(_value.coordinates, (value) {
      return _then(_value.copyWith(coordinates: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchHotels implements SearchHotels {
  const _$SearchHotels(
      {this.type = 'hotel',
      this.locationid = '',
      this.locationName = '',
      @JsonKey(toJson: toBase64, fromJson: fromBase64toCoordinates)
          required this.coordinates,
      @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
          required this.checkIn,
      @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
          required this.checkOut,
      @JsonKey(toJson: toBase64, fromJson: fromBase64toTravellers)
          required this.occupancies,
      @JsonKey(includeIfNull: false)
          this.nationality,
      @JsonKey(includeIfNull: false)
          this.countryOfResidence,
      @JsonKey(includeIfNull: false)
          this.token,
      @JsonKey(includeIfNull: false)
          this.correlationId,
      String? $type})
      : $type = $type ?? 'hotels';

  factory _$SearchHotels.fromJson(Map<String, dynamic> json) =>
      _$$SearchHotelsFromJson(json);

  @JsonKey()
  @override
  final String type;
  @JsonKey()
  @override
  final String locationid;
  @JsonKey()
  @override
  final String locationName;
  @override
  @JsonKey(toJson: toBase64, fromJson: fromBase64toCoordinates)
  final Coordinates coordinates;
  @override
  @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
  final DateTime checkIn;
  @override
  @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
  final DateTime checkOut;
  @override
  @JsonKey(toJson: toBase64, fromJson: fromBase64toTravellers)
  final List<TravellersHotel> occupancies;
  @override
  @JsonKey(includeIfNull: false)
  final String? nationality;
  @override
  @JsonKey(includeIfNull: false)
  final String? countryOfResidence;
  @override
  @JsonKey(includeIfNull: false)
  final String? token;
  @override
  @JsonKey(includeIfNull: false)
  final String? correlationId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SearchQuery.hotels(type: $type, locationid: $locationid, locationName: $locationName, coordinates: $coordinates, checkIn: $checkIn, checkOut: $checkOut, occupancies: $occupancies, nationality: $nationality, countryOfResidence: $countryOfResidence, token: $token, correlationId: $correlationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchHotels &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.locationid, locationid) &&
            const DeepCollectionEquality()
                .equals(other.locationName, locationName) &&
            const DeepCollectionEquality()
                .equals(other.coordinates, coordinates) &&
            const DeepCollectionEquality().equals(other.checkIn, checkIn) &&
            const DeepCollectionEquality().equals(other.checkOut, checkOut) &&
            const DeepCollectionEquality()
                .equals(other.occupancies, occupancies) &&
            const DeepCollectionEquality()
                .equals(other.nationality, nationality) &&
            const DeepCollectionEquality()
                .equals(other.countryOfResidence, countryOfResidence) &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality()
                .equals(other.correlationId, correlationId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(locationid),
      const DeepCollectionEquality().hash(locationName),
      const DeepCollectionEquality().hash(coordinates),
      const DeepCollectionEquality().hash(checkIn),
      const DeepCollectionEquality().hash(checkOut),
      const DeepCollectionEquality().hash(occupancies),
      const DeepCollectionEquality().hash(nationality),
      const DeepCollectionEquality().hash(countryOfResidence),
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(correlationId));

  @JsonKey(ignore: true)
  @override
  $SearchHotelsCopyWith<SearchHotels> get copyWith =>
      _$SearchHotelsCopyWithImpl<SearchHotels>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            FlightTripType flightType,
            Location? startLocation,
            Location? endLocation,
            DateTime? startDate,
            DateTime? endDate,
            Traveller? travellers,
            FlightClass? flightClass)
        flights,
    required TResult Function(
            String type,
            String locationid,
            String locationName,
            @JsonKey(toJson: toBase64, fromJson: fromBase64toCoordinates)
                Coordinates coordinates,
            @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
                DateTime checkIn,
            @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
                DateTime checkOut,
            @JsonKey(toJson: toBase64, fromJson: fromBase64toTravellers)
                List<TravellersHotel> occupancies,
            @JsonKey(includeIfNull: false)
                String? nationality,
            @JsonKey(includeIfNull: false)
                String? countryOfResidence,
            @JsonKey(includeIfNull: false)
                String? token,
            @JsonKey(includeIfNull: false)
                String? correlationId)
        hotels,
    required TResult Function(
            DropOffType type,
            Location? startLocation,
            Location? endLocation,
            DateTime? startDate,
            DateTime? endDate,
            Traveller? travellers)
        cars,
    required TResult Function(DropOffType type, Location? dropOff,
            DateTime? pickUpDate, DateTime? dropOffDate, Traveller? travellers)
        activities,
  }) {
    return hotels(
        type,
        locationid,
        locationName,
        coordinates,
        checkIn,
        checkOut,
        occupancies,
        nationality,
        countryOfResidence,
        token,
        correlationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            FlightTripType flightType,
            Location? startLocation,
            Location? endLocation,
            DateTime? startDate,
            DateTime? endDate,
            Traveller? travellers,
            FlightClass? flightClass)?
        flights,
    TResult Function(
            String type,
            String locationid,
            String locationName,
            @JsonKey(toJson: toBase64, fromJson: fromBase64toCoordinates)
                Coordinates coordinates,
            @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
                DateTime checkIn,
            @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
                DateTime checkOut,
            @JsonKey(toJson: toBase64, fromJson: fromBase64toTravellers)
                List<TravellersHotel> occupancies,
            @JsonKey(includeIfNull: false)
                String? nationality,
            @JsonKey(includeIfNull: false)
                String? countryOfResidence,
            @JsonKey(includeIfNull: false)
                String? token,
            @JsonKey(includeIfNull: false)
                String? correlationId)?
        hotels,
    TResult Function(
            DropOffType type,
            Location? startLocation,
            Location? endLocation,
            DateTime? startDate,
            DateTime? endDate,
            Traveller? travellers)?
        cars,
    TResult Function(DropOffType type, Location? dropOff, DateTime? pickUpDate,
            DateTime? dropOffDate, Traveller? travellers)?
        activities,
  }) {
    return hotels?.call(
        type,
        locationid,
        locationName,
        coordinates,
        checkIn,
        checkOut,
        occupancies,
        nationality,
        countryOfResidence,
        token,
        correlationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            FlightTripType flightType,
            Location? startLocation,
            Location? endLocation,
            DateTime? startDate,
            DateTime? endDate,
            Traveller? travellers,
            FlightClass? flightClass)?
        flights,
    TResult Function(
            String type,
            String locationid,
            String locationName,
            @JsonKey(toJson: toBase64, fromJson: fromBase64toCoordinates)
                Coordinates coordinates,
            @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
                DateTime checkIn,
            @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
                DateTime checkOut,
            @JsonKey(toJson: toBase64, fromJson: fromBase64toTravellers)
                List<TravellersHotel> occupancies,
            @JsonKey(includeIfNull: false)
                String? nationality,
            @JsonKey(includeIfNull: false)
                String? countryOfResidence,
            @JsonKey(includeIfNull: false)
                String? token,
            @JsonKey(includeIfNull: false)
                String? correlationId)?
        hotels,
    TResult Function(
            DropOffType type,
            Location? startLocation,
            Location? endLocation,
            DateTime? startDate,
            DateTime? endDate,
            Traveller? travellers)?
        cars,
    TResult Function(DropOffType type, Location? dropOff, DateTime? pickUpDate,
            DateTime? dropOffDate, Traveller? travellers)?
        activities,
    required TResult orElse(),
  }) {
    if (hotels != null) {
      return hotels(
          type,
          locationid,
          locationName,
          coordinates,
          checkIn,
          checkOut,
          occupancies,
          nationality,
          countryOfResidence,
          token,
          correlationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchFlights value) flights,
    required TResult Function(SearchHotels value) hotels,
    required TResult Function(SearchCars value) cars,
    required TResult Function(SearchActivities value) activities,
  }) {
    return hotels(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchFlights value)? flights,
    TResult Function(SearchHotels value)? hotels,
    TResult Function(SearchCars value)? cars,
    TResult Function(SearchActivities value)? activities,
  }) {
    return hotels?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchFlights value)? flights,
    TResult Function(SearchHotels value)? hotels,
    TResult Function(SearchCars value)? cars,
    TResult Function(SearchActivities value)? activities,
    required TResult orElse(),
  }) {
    if (hotels != null) {
      return hotels(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchHotelsToJson(this);
  }
}

abstract class SearchHotels implements SearchQuery {
  const factory SearchHotels(
      {String type,
      String locationid,
      String locationName,
      @JsonKey(toJson: toBase64, fromJson: fromBase64toCoordinates)
          required Coordinates coordinates,
      @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
          required DateTime checkIn,
      @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
          required DateTime checkOut,
      @JsonKey(toJson: toBase64, fromJson: fromBase64toTravellers)
          required List<TravellersHotel> occupancies,
      @JsonKey(includeIfNull: false)
          String? nationality,
      @JsonKey(includeIfNull: false)
          String? countryOfResidence,
      @JsonKey(includeIfNull: false)
          String? token,
      @JsonKey(includeIfNull: false)
          String? correlationId}) = _$SearchHotels;

  factory SearchHotels.fromJson(Map<String, dynamic> json) =
      _$SearchHotels.fromJson;

  String get type;
  String get locationid;
  String get locationName;
  @JsonKey(toJson: toBase64, fromJson: fromBase64toCoordinates)
  Coordinates get coordinates;
  @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
  DateTime get checkIn;
  @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
  DateTime get checkOut;
  @JsonKey(toJson: toBase64, fromJson: fromBase64toTravellers)
  List<TravellersHotel> get occupancies;
  @JsonKey(includeIfNull: false)
  String? get nationality;
  @JsonKey(includeIfNull: false)
  String? get countryOfResidence;
  @JsonKey(includeIfNull: false)
  String? get token;
  @JsonKey(includeIfNull: false)
  String? get correlationId;
  @JsonKey(ignore: true)
  $SearchHotelsCopyWith<SearchHotels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCarsCopyWith<$Res> {
  factory $SearchCarsCopyWith(
          SearchCars value, $Res Function(SearchCars) then) =
      _$SearchCarsCopyWithImpl<$Res>;
  $Res call(
      {DropOffType type,
      Location? startLocation,
      Location? endLocation,
      DateTime? startDate,
      DateTime? endDate,
      Traveller? travellers});

  $LocationCopyWith<$Res>? get startLocation;
  $LocationCopyWith<$Res>? get endLocation;
  $TravellerCopyWith<$Res>? get travellers;
}

/// @nodoc
class _$SearchCarsCopyWithImpl<$Res> extends _$SearchQueryCopyWithImpl<$Res>
    implements $SearchCarsCopyWith<$Res> {
  _$SearchCarsCopyWithImpl(SearchCars _value, $Res Function(SearchCars) _then)
      : super(_value, (v) => _then(v as SearchCars));

  @override
  SearchCars get _value => super._value as SearchCars;

  @override
  $Res call({
    Object? type = freezed,
    Object? startLocation = freezed,
    Object? endLocation = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? travellers = freezed,
  }) {
    return _then(SearchCars(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DropOffType,
      startLocation: startLocation == freezed
          ? _value.startLocation
          : startLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      endLocation: endLocation == freezed
          ? _value.endLocation
          : endLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      travellers: travellers == freezed
          ? _value.travellers
          : travellers // ignore: cast_nullable_to_non_nullable
              as Traveller?,
    ));
  }

  @override
  $LocationCopyWith<$Res>? get startLocation {
    if (_value.startLocation == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.startLocation!, (value) {
      return _then(_value.copyWith(startLocation: value));
    });
  }

  @override
  $LocationCopyWith<$Res>? get endLocation {
    if (_value.endLocation == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.endLocation!, (value) {
      return _then(_value.copyWith(endLocation: value));
    });
  }

  @override
  $TravellerCopyWith<$Res>? get travellers {
    if (_value.travellers == null) {
      return null;
    }

    return $TravellerCopyWith<$Res>(_value.travellers!, (value) {
      return _then(_value.copyWith(travellers: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchCars implements SearchCars {
  const _$SearchCars(
      {this.type = DropOffType.oneWay,
      this.startLocation,
      this.endLocation,
      this.startDate,
      this.endDate,
      this.travellers,
      String? $type})
      : $type = $type ?? 'cars';

  factory _$SearchCars.fromJson(Map<String, dynamic> json) =>
      _$$SearchCarsFromJson(json);

  @JsonKey()
  @override
  final DropOffType type;
  @override
  final Location? startLocation;
  @override
  final Location? endLocation;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final Traveller? travellers;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SearchQuery.cars(type: $type, startLocation: $startLocation, endLocation: $endLocation, startDate: $startDate, endDate: $endDate, travellers: $travellers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchCars &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.startLocation, startLocation) &&
            const DeepCollectionEquality()
                .equals(other.endLocation, endLocation) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality()
                .equals(other.travellers, travellers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(startLocation),
      const DeepCollectionEquality().hash(endLocation),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(travellers));

  @JsonKey(ignore: true)
  @override
  $SearchCarsCopyWith<SearchCars> get copyWith =>
      _$SearchCarsCopyWithImpl<SearchCars>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            FlightTripType flightType,
            Location? startLocation,
            Location? endLocation,
            DateTime? startDate,
            DateTime? endDate,
            Traveller? travellers,
            FlightClass? flightClass)
        flights,
    required TResult Function(
            String type,
            String locationid,
            String locationName,
            @JsonKey(toJson: toBase64, fromJson: fromBase64toCoordinates)
                Coordinates coordinates,
            @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
                DateTime checkIn,
            @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
                DateTime checkOut,
            @JsonKey(toJson: toBase64, fromJson: fromBase64toTravellers)
                List<TravellersHotel> occupancies,
            @JsonKey(includeIfNull: false)
                String? nationality,
            @JsonKey(includeIfNull: false)
                String? countryOfResidence,
            @JsonKey(includeIfNull: false)
                String? token,
            @JsonKey(includeIfNull: false)
                String? correlationId)
        hotels,
    required TResult Function(
            DropOffType type,
            Location? startLocation,
            Location? endLocation,
            DateTime? startDate,
            DateTime? endDate,
            Traveller? travellers)
        cars,
    required TResult Function(DropOffType type, Location? dropOff,
            DateTime? pickUpDate, DateTime? dropOffDate, Traveller? travellers)
        activities,
  }) {
    return cars(
        type, startLocation, endLocation, startDate, endDate, travellers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            FlightTripType flightType,
            Location? startLocation,
            Location? endLocation,
            DateTime? startDate,
            DateTime? endDate,
            Traveller? travellers,
            FlightClass? flightClass)?
        flights,
    TResult Function(
            String type,
            String locationid,
            String locationName,
            @JsonKey(toJson: toBase64, fromJson: fromBase64toCoordinates)
                Coordinates coordinates,
            @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
                DateTime checkIn,
            @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
                DateTime checkOut,
            @JsonKey(toJson: toBase64, fromJson: fromBase64toTravellers)
                List<TravellersHotel> occupancies,
            @JsonKey(includeIfNull: false)
                String? nationality,
            @JsonKey(includeIfNull: false)
                String? countryOfResidence,
            @JsonKey(includeIfNull: false)
                String? token,
            @JsonKey(includeIfNull: false)
                String? correlationId)?
        hotels,
    TResult Function(
            DropOffType type,
            Location? startLocation,
            Location? endLocation,
            DateTime? startDate,
            DateTime? endDate,
            Traveller? travellers)?
        cars,
    TResult Function(DropOffType type, Location? dropOff, DateTime? pickUpDate,
            DateTime? dropOffDate, Traveller? travellers)?
        activities,
  }) {
    return cars?.call(
        type, startLocation, endLocation, startDate, endDate, travellers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            FlightTripType flightType,
            Location? startLocation,
            Location? endLocation,
            DateTime? startDate,
            DateTime? endDate,
            Traveller? travellers,
            FlightClass? flightClass)?
        flights,
    TResult Function(
            String type,
            String locationid,
            String locationName,
            @JsonKey(toJson: toBase64, fromJson: fromBase64toCoordinates)
                Coordinates coordinates,
            @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
                DateTime checkIn,
            @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
                DateTime checkOut,
            @JsonKey(toJson: toBase64, fromJson: fromBase64toTravellers)
                List<TravellersHotel> occupancies,
            @JsonKey(includeIfNull: false)
                String? nationality,
            @JsonKey(includeIfNull: false)
                String? countryOfResidence,
            @JsonKey(includeIfNull: false)
                String? token,
            @JsonKey(includeIfNull: false)
                String? correlationId)?
        hotels,
    TResult Function(
            DropOffType type,
            Location? startLocation,
            Location? endLocation,
            DateTime? startDate,
            DateTime? endDate,
            Traveller? travellers)?
        cars,
    TResult Function(DropOffType type, Location? dropOff, DateTime? pickUpDate,
            DateTime? dropOffDate, Traveller? travellers)?
        activities,
    required TResult orElse(),
  }) {
    if (cars != null) {
      return cars(
          type, startLocation, endLocation, startDate, endDate, travellers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchFlights value) flights,
    required TResult Function(SearchHotels value) hotels,
    required TResult Function(SearchCars value) cars,
    required TResult Function(SearchActivities value) activities,
  }) {
    return cars(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchFlights value)? flights,
    TResult Function(SearchHotels value)? hotels,
    TResult Function(SearchCars value)? cars,
    TResult Function(SearchActivities value)? activities,
  }) {
    return cars?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchFlights value)? flights,
    TResult Function(SearchHotels value)? hotels,
    TResult Function(SearchCars value)? cars,
    TResult Function(SearchActivities value)? activities,
    required TResult orElse(),
  }) {
    if (cars != null) {
      return cars(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchCarsToJson(this);
  }
}

abstract class SearchCars implements SearchQuery {
  const factory SearchCars(
      {DropOffType type,
      Location? startLocation,
      Location? endLocation,
      DateTime? startDate,
      DateTime? endDate,
      Traveller? travellers}) = _$SearchCars;

  factory SearchCars.fromJson(Map<String, dynamic> json) =
      _$SearchCars.fromJson;

  DropOffType get type;
  Location? get startLocation;
  Location? get endLocation;
  DateTime? get startDate;
  DateTime? get endDate;
  Traveller? get travellers;
  @JsonKey(ignore: true)
  $SearchCarsCopyWith<SearchCars> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchActivitiesCopyWith<$Res> {
  factory $SearchActivitiesCopyWith(
          SearchActivities value, $Res Function(SearchActivities) then) =
      _$SearchActivitiesCopyWithImpl<$Res>;
  $Res call(
      {DropOffType type,
      Location? dropOff,
      DateTime? pickUpDate,
      DateTime? dropOffDate,
      Traveller? travellers});

  $LocationCopyWith<$Res>? get dropOff;
  $TravellerCopyWith<$Res>? get travellers;
}

/// @nodoc
class _$SearchActivitiesCopyWithImpl<$Res>
    extends _$SearchQueryCopyWithImpl<$Res>
    implements $SearchActivitiesCopyWith<$Res> {
  _$SearchActivitiesCopyWithImpl(
      SearchActivities _value, $Res Function(SearchActivities) _then)
      : super(_value, (v) => _then(v as SearchActivities));

  @override
  SearchActivities get _value => super._value as SearchActivities;

  @override
  $Res call({
    Object? type = freezed,
    Object? dropOff = freezed,
    Object? pickUpDate = freezed,
    Object? dropOffDate = freezed,
    Object? travellers = freezed,
  }) {
    return _then(SearchActivities(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DropOffType,
      dropOff: dropOff == freezed
          ? _value.dropOff
          : dropOff // ignore: cast_nullable_to_non_nullable
              as Location?,
      pickUpDate: pickUpDate == freezed
          ? _value.pickUpDate
          : pickUpDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dropOffDate: dropOffDate == freezed
          ? _value.dropOffDate
          : dropOffDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      travellers: travellers == freezed
          ? _value.travellers
          : travellers // ignore: cast_nullable_to_non_nullable
              as Traveller?,
    ));
  }

  @override
  $LocationCopyWith<$Res>? get dropOff {
    if (_value.dropOff == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.dropOff!, (value) {
      return _then(_value.copyWith(dropOff: value));
    });
  }

  @override
  $TravellerCopyWith<$Res>? get travellers {
    if (_value.travellers == null) {
      return null;
    }

    return $TravellerCopyWith<$Res>(_value.travellers!, (value) {
      return _then(_value.copyWith(travellers: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchActivities implements SearchActivities {
  const _$SearchActivities(
      {this.type = DropOffType.oneWay,
      this.dropOff,
      this.pickUpDate,
      this.dropOffDate,
      this.travellers,
      String? $type})
      : $type = $type ?? 'activities';

  factory _$SearchActivities.fromJson(Map<String, dynamic> json) =>
      _$$SearchActivitiesFromJson(json);

  @JsonKey()
  @override
  final DropOffType type;
  @override
  final Location? dropOff;
  @override
  final DateTime? pickUpDate;
  @override
  final DateTime? dropOffDate;
  @override
  final Traveller? travellers;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SearchQuery.activities(type: $type, dropOff: $dropOff, pickUpDate: $pickUpDate, dropOffDate: $dropOffDate, travellers: $travellers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchActivities &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.dropOff, dropOff) &&
            const DeepCollectionEquality()
                .equals(other.pickUpDate, pickUpDate) &&
            const DeepCollectionEquality()
                .equals(other.dropOffDate, dropOffDate) &&
            const DeepCollectionEquality()
                .equals(other.travellers, travellers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(dropOff),
      const DeepCollectionEquality().hash(pickUpDate),
      const DeepCollectionEquality().hash(dropOffDate),
      const DeepCollectionEquality().hash(travellers));

  @JsonKey(ignore: true)
  @override
  $SearchActivitiesCopyWith<SearchActivities> get copyWith =>
      _$SearchActivitiesCopyWithImpl<SearchActivities>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            FlightTripType flightType,
            Location? startLocation,
            Location? endLocation,
            DateTime? startDate,
            DateTime? endDate,
            Traveller? travellers,
            FlightClass? flightClass)
        flights,
    required TResult Function(
            String type,
            String locationid,
            String locationName,
            @JsonKey(toJson: toBase64, fromJson: fromBase64toCoordinates)
                Coordinates coordinates,
            @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
                DateTime checkIn,
            @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
                DateTime checkOut,
            @JsonKey(toJson: toBase64, fromJson: fromBase64toTravellers)
                List<TravellersHotel> occupancies,
            @JsonKey(includeIfNull: false)
                String? nationality,
            @JsonKey(includeIfNull: false)
                String? countryOfResidence,
            @JsonKey(includeIfNull: false)
                String? token,
            @JsonKey(includeIfNull: false)
                String? correlationId)
        hotels,
    required TResult Function(
            DropOffType type,
            Location? startLocation,
            Location? endLocation,
            DateTime? startDate,
            DateTime? endDate,
            Traveller? travellers)
        cars,
    required TResult Function(DropOffType type, Location? dropOff,
            DateTime? pickUpDate, DateTime? dropOffDate, Traveller? travellers)
        activities,
  }) {
    return activities(type, dropOff, pickUpDate, dropOffDate, travellers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            FlightTripType flightType,
            Location? startLocation,
            Location? endLocation,
            DateTime? startDate,
            DateTime? endDate,
            Traveller? travellers,
            FlightClass? flightClass)?
        flights,
    TResult Function(
            String type,
            String locationid,
            String locationName,
            @JsonKey(toJson: toBase64, fromJson: fromBase64toCoordinates)
                Coordinates coordinates,
            @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
                DateTime checkIn,
            @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
                DateTime checkOut,
            @JsonKey(toJson: toBase64, fromJson: fromBase64toTravellers)
                List<TravellersHotel> occupancies,
            @JsonKey(includeIfNull: false)
                String? nationality,
            @JsonKey(includeIfNull: false)
                String? countryOfResidence,
            @JsonKey(includeIfNull: false)
                String? token,
            @JsonKey(includeIfNull: false)
                String? correlationId)?
        hotels,
    TResult Function(
            DropOffType type,
            Location? startLocation,
            Location? endLocation,
            DateTime? startDate,
            DateTime? endDate,
            Traveller? travellers)?
        cars,
    TResult Function(DropOffType type, Location? dropOff, DateTime? pickUpDate,
            DateTime? dropOffDate, Traveller? travellers)?
        activities,
  }) {
    return activities?.call(type, dropOff, pickUpDate, dropOffDate, travellers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            FlightTripType flightType,
            Location? startLocation,
            Location? endLocation,
            DateTime? startDate,
            DateTime? endDate,
            Traveller? travellers,
            FlightClass? flightClass)?
        flights,
    TResult Function(
            String type,
            String locationid,
            String locationName,
            @JsonKey(toJson: toBase64, fromJson: fromBase64toCoordinates)
                Coordinates coordinates,
            @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
                DateTime checkIn,
            @JsonKey(toJson: customDateFormat, fromJson: DateTime.parse)
                DateTime checkOut,
            @JsonKey(toJson: toBase64, fromJson: fromBase64toTravellers)
                List<TravellersHotel> occupancies,
            @JsonKey(includeIfNull: false)
                String? nationality,
            @JsonKey(includeIfNull: false)
                String? countryOfResidence,
            @JsonKey(includeIfNull: false)
                String? token,
            @JsonKey(includeIfNull: false)
                String? correlationId)?
        hotels,
    TResult Function(
            DropOffType type,
            Location? startLocation,
            Location? endLocation,
            DateTime? startDate,
            DateTime? endDate,
            Traveller? travellers)?
        cars,
    TResult Function(DropOffType type, Location? dropOff, DateTime? pickUpDate,
            DateTime? dropOffDate, Traveller? travellers)?
        activities,
    required TResult orElse(),
  }) {
    if (activities != null) {
      return activities(type, dropOff, pickUpDate, dropOffDate, travellers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchFlights value) flights,
    required TResult Function(SearchHotels value) hotels,
    required TResult Function(SearchCars value) cars,
    required TResult Function(SearchActivities value) activities,
  }) {
    return activities(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchFlights value)? flights,
    TResult Function(SearchHotels value)? hotels,
    TResult Function(SearchCars value)? cars,
    TResult Function(SearchActivities value)? activities,
  }) {
    return activities?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchFlights value)? flights,
    TResult Function(SearchHotels value)? hotels,
    TResult Function(SearchCars value)? cars,
    TResult Function(SearchActivities value)? activities,
    required TResult orElse(),
  }) {
    if (activities != null) {
      return activities(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchActivitiesToJson(this);
  }
}

abstract class SearchActivities implements SearchQuery {
  const factory SearchActivities(
      {DropOffType type,
      Location? dropOff,
      DateTime? pickUpDate,
      DateTime? dropOffDate,
      Traveller? travellers}) = _$SearchActivities;

  factory SearchActivities.fromJson(Map<String, dynamic> json) =
      _$SearchActivities.fromJson;

  DropOffType get type;
  Location? get dropOff;
  DateTime? get pickUpDate;
  DateTime? get dropOffDate;
  Traveller? get travellers;
  @JsonKey(ignore: true)
  $SearchActivitiesCopyWith<SearchActivities> get copyWith =>
      throw _privateConstructorUsedError;
}
