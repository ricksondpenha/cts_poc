// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Location _$LocationFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _Location.fromJson(json);
    case 'flights':
      return LocationFlights.fromJson(json);
    case 'hotels':
      return LocationHotels.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Location',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$LocationTearOff {
  const _$LocationTearOff();

  _Location call(
      {String id = '',
      String code = '',
      String name = '',
      String fullName = '',
      String type = '',
      String city = '',
      String state = '',
      String country = '',
      List<Airport> airports = const []}) {
    return _Location(
      id: id,
      code: code,
      name: name,
      fullName: fullName,
      type: type,
      city: city,
      state: state,
      country: country,
      airports: airports,
    );
  }

  LocationFlights flights(
      {String id = '',
      String code = '',
      String name = '',
      String fullName = '',
      List<Airport> airports = const []}) {
    return LocationFlights(
      id: id,
      code: code,
      name: name,
      fullName: fullName,
      airports: airports,
    );
  }

  LocationHotels hotels(
      {String id = '', String name = '', required Coordinates latLng}) {
    return LocationHotels(
      id: id,
      name: name,
      latLng: latLng,
    );
  }

  Location fromJson(Map<String, Object?> json) {
    return Location.fromJson(json);
  }
}

/// @nodoc
const $Location = _$LocationTearOff();

/// @nodoc
mixin _$Location {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String code,
            String name,
            String fullName,
            String type,
            String city,
            String state,
            String country,
            List<Airport> airports)
        $default, {
    required TResult Function(String id, String code, String name,
            String fullName, List<Airport> airports)
        flights,
    required TResult Function(String id, String name, Coordinates latLng)
        hotels,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            String id,
            String code,
            String name,
            String fullName,
            String type,
            String city,
            String state,
            String country,
            List<Airport> airports)?
        $default, {
    TResult Function(String id, String code, String name, String fullName,
            List<Airport> airports)?
        flights,
    TResult Function(String id, String name, Coordinates latLng)? hotels,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String code,
            String name,
            String fullName,
            String type,
            String city,
            String state,
            String country,
            List<Airport> airports)?
        $default, {
    TResult Function(String id, String code, String name, String fullName,
            List<Airport> airports)?
        flights,
    TResult Function(String id, String name, Coordinates latLng)? hotels,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Location value) $default, {
    required TResult Function(LocationFlights value) flights,
    required TResult Function(LocationHotels value) hotels,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_Location value)? $default, {
    TResult Function(LocationFlights value)? flights,
    TResult Function(LocationHotels value)? hotels,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Location value)? $default, {
    TResult Function(LocationFlights value)? flights,
    TResult Function(LocationHotels value)? hotels,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res>;
  $Res call({String id, String name});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res> implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  final Location _value;
  // ignore: unused_field
  final $Res Function(Location) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$LocationCopyWith(_Location value, $Res Function(_Location) then) =
      __$LocationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String code,
      String name,
      String fullName,
      String type,
      String city,
      String state,
      String country,
      List<Airport> airports});
}

/// @nodoc
class __$LocationCopyWithImpl<$Res> extends _$LocationCopyWithImpl<$Res>
    implements _$LocationCopyWith<$Res> {
  __$LocationCopyWithImpl(_Location _value, $Res Function(_Location) _then)
      : super(_value, (v) => _then(v as _Location));

  @override
  _Location get _value => super._value as _Location;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? fullName = freezed,
    Object? type = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? airports = freezed,
  }) {
    return _then(_Location(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      airports: airports == freezed
          ? _value.airports
          : airports // ignore: cast_nullable_to_non_nullable
              as List<Airport>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Location implements _Location {
  const _$_Location(
      {this.id = '',
      this.code = '',
      this.name = '',
      this.fullName = '',
      this.type = '',
      this.city = '',
      this.state = '',
      this.country = '',
      this.airports = const [],
      String? $type})
      : $type = $type ?? 'default';

  factory _$_Location.fromJson(Map<String, dynamic> json) =>
      _$$_LocationFromJson(json);

  @JsonKey()
  @override
  final String id;
  @JsonKey()
  @override
  final String code;
  @JsonKey()
  @override
  final String name;
  @JsonKey()
  @override
  final String fullName;
  @JsonKey()
  @override
  final String type;
  @JsonKey()
  @override
  final String city;
  @JsonKey()
  @override
  final String state;
  @JsonKey()
  @override
  final String country;
  @JsonKey()
  @override
  final List<Airport> airports;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Location(id: $id, code: $code, name: $name, fullName: $fullName, type: $type, city: $city, state: $state, country: $country, airports: $airports)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Location &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.airports, airports));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(fullName),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(airports));

  @JsonKey(ignore: true)
  @override
  _$LocationCopyWith<_Location> get copyWith =>
      __$LocationCopyWithImpl<_Location>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String code,
            String name,
            String fullName,
            String type,
            String city,
            String state,
            String country,
            List<Airport> airports)
        $default, {
    required TResult Function(String id, String code, String name,
            String fullName, List<Airport> airports)
        flights,
    required TResult Function(String id, String name, Coordinates latLng)
        hotels,
  }) {
    return $default(
        id, code, name, fullName, type, city, state, country, airports);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            String id,
            String code,
            String name,
            String fullName,
            String type,
            String city,
            String state,
            String country,
            List<Airport> airports)?
        $default, {
    TResult Function(String id, String code, String name, String fullName,
            List<Airport> airports)?
        flights,
    TResult Function(String id, String name, Coordinates latLng)? hotels,
  }) {
    return $default?.call(
        id, code, name, fullName, type, city, state, country, airports);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String code,
            String name,
            String fullName,
            String type,
            String city,
            String state,
            String country,
            List<Airport> airports)?
        $default, {
    TResult Function(String id, String code, String name, String fullName,
            List<Airport> airports)?
        flights,
    TResult Function(String id, String name, Coordinates latLng)? hotels,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          id, code, name, fullName, type, city, state, country, airports);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Location value) $default, {
    required TResult Function(LocationFlights value) flights,
    required TResult Function(LocationHotels value) hotels,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_Location value)? $default, {
    TResult Function(LocationFlights value)? flights,
    TResult Function(LocationHotels value)? hotels,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Location value)? $default, {
    TResult Function(LocationFlights value)? flights,
    TResult Function(LocationHotels value)? hotels,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationToJson(this);
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {String id,
      String code,
      String name,
      String fullName,
      String type,
      String city,
      String state,
      String country,
      List<Airport> airports}) = _$_Location;

  factory _Location.fromJson(Map<String, dynamic> json) = _$_Location.fromJson;

  @override
  String get id;
  String get code;
  @override
  String get name;
  String get fullName;
  String get type;
  String get city;
  String get state;
  String get country;
  List<Airport> get airports;
  @override
  @JsonKey(ignore: true)
  _$LocationCopyWith<_Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationFlightsCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory $LocationFlightsCopyWith(
          LocationFlights value, $Res Function(LocationFlights) then) =
      _$LocationFlightsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String code,
      String name,
      String fullName,
      List<Airport> airports});
}

/// @nodoc
class _$LocationFlightsCopyWithImpl<$Res> extends _$LocationCopyWithImpl<$Res>
    implements $LocationFlightsCopyWith<$Res> {
  _$LocationFlightsCopyWithImpl(
      LocationFlights _value, $Res Function(LocationFlights) _then)
      : super(_value, (v) => _then(v as LocationFlights));

  @override
  LocationFlights get _value => super._value as LocationFlights;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? fullName = freezed,
    Object? airports = freezed,
  }) {
    return _then(LocationFlights(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      airports: airports == freezed
          ? _value.airports
          : airports // ignore: cast_nullable_to_non_nullable
              as List<Airport>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationFlights implements LocationFlights {
  const _$LocationFlights(
      {this.id = '',
      this.code = '',
      this.name = '',
      this.fullName = '',
      this.airports = const [],
      String? $type})
      : $type = $type ?? 'flights';

  factory _$LocationFlights.fromJson(Map<String, dynamic> json) =>
      _$$LocationFlightsFromJson(json);

  @JsonKey()
  @override
  final String id;
  @JsonKey()
  @override
  final String code;
  @JsonKey()
  @override
  final String name;
  @JsonKey()
  @override
  final String fullName;
  @JsonKey()
  @override
  final List<Airport> airports;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Location.flights(id: $id, code: $code, name: $name, fullName: $fullName, airports: $airports)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocationFlights &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality().equals(other.airports, airports));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(fullName),
      const DeepCollectionEquality().hash(airports));

  @JsonKey(ignore: true)
  @override
  $LocationFlightsCopyWith<LocationFlights> get copyWith =>
      _$LocationFlightsCopyWithImpl<LocationFlights>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String code,
            String name,
            String fullName,
            String type,
            String city,
            String state,
            String country,
            List<Airport> airports)
        $default, {
    required TResult Function(String id, String code, String name,
            String fullName, List<Airport> airports)
        flights,
    required TResult Function(String id, String name, Coordinates latLng)
        hotels,
  }) {
    return flights(id, code, name, fullName, airports);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            String id,
            String code,
            String name,
            String fullName,
            String type,
            String city,
            String state,
            String country,
            List<Airport> airports)?
        $default, {
    TResult Function(String id, String code, String name, String fullName,
            List<Airport> airports)?
        flights,
    TResult Function(String id, String name, Coordinates latLng)? hotels,
  }) {
    return flights?.call(id, code, name, fullName, airports);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String code,
            String name,
            String fullName,
            String type,
            String city,
            String state,
            String country,
            List<Airport> airports)?
        $default, {
    TResult Function(String id, String code, String name, String fullName,
            List<Airport> airports)?
        flights,
    TResult Function(String id, String name, Coordinates latLng)? hotels,
    required TResult orElse(),
  }) {
    if (flights != null) {
      return flights(id, code, name, fullName, airports);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Location value) $default, {
    required TResult Function(LocationFlights value) flights,
    required TResult Function(LocationHotels value) hotels,
  }) {
    return flights(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_Location value)? $default, {
    TResult Function(LocationFlights value)? flights,
    TResult Function(LocationHotels value)? hotels,
  }) {
    return flights?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Location value)? $default, {
    TResult Function(LocationFlights value)? flights,
    TResult Function(LocationHotels value)? hotels,
    required TResult orElse(),
  }) {
    if (flights != null) {
      return flights(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationFlightsToJson(this);
  }
}

abstract class LocationFlights implements Location {
  const factory LocationFlights(
      {String id,
      String code,
      String name,
      String fullName,
      List<Airport> airports}) = _$LocationFlights;

  factory LocationFlights.fromJson(Map<String, dynamic> json) =
      _$LocationFlights.fromJson;

  @override
  String get id;
  String get code;
  @override
  String get name;
  String get fullName;
  List<Airport> get airports;
  @override
  @JsonKey(ignore: true)
  $LocationFlightsCopyWith<LocationFlights> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationHotelsCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory $LocationHotelsCopyWith(
          LocationHotels value, $Res Function(LocationHotels) then) =
      _$LocationHotelsCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, Coordinates latLng});

  $CoordinatesCopyWith<$Res> get latLng;
}

/// @nodoc
class _$LocationHotelsCopyWithImpl<$Res> extends _$LocationCopyWithImpl<$Res>
    implements $LocationHotelsCopyWith<$Res> {
  _$LocationHotelsCopyWithImpl(
      LocationHotels _value, $Res Function(LocationHotels) _then)
      : super(_value, (v) => _then(v as LocationHotels));

  @override
  LocationHotels get _value => super._value as LocationHotels;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? latLng = freezed,
  }) {
    return _then(LocationHotels(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latLng: latLng == freezed
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as Coordinates,
    ));
  }

  @override
  $CoordinatesCopyWith<$Res> get latLng {
    return $CoordinatesCopyWith<$Res>(_value.latLng, (value) {
      return _then(_value.copyWith(latLng: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationHotels implements LocationHotels {
  const _$LocationHotels(
      {this.id = '', this.name = '', required this.latLng, String? $type})
      : $type = $type ?? 'hotels';

  factory _$LocationHotels.fromJson(Map<String, dynamic> json) =>
      _$$LocationHotelsFromJson(json);

  @JsonKey()
  @override
  final String id;
  @JsonKey()
  @override
  final String name;
  @override
  final Coordinates latLng;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Location.hotels(id: $id, name: $name, latLng: $latLng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocationHotels &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.latLng, latLng));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(latLng));

  @JsonKey(ignore: true)
  @override
  $LocationHotelsCopyWith<LocationHotels> get copyWith =>
      _$LocationHotelsCopyWithImpl<LocationHotels>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String code,
            String name,
            String fullName,
            String type,
            String city,
            String state,
            String country,
            List<Airport> airports)
        $default, {
    required TResult Function(String id, String code, String name,
            String fullName, List<Airport> airports)
        flights,
    required TResult Function(String id, String name, Coordinates latLng)
        hotels,
  }) {
    return hotels(id, name, latLng);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            String id,
            String code,
            String name,
            String fullName,
            String type,
            String city,
            String state,
            String country,
            List<Airport> airports)?
        $default, {
    TResult Function(String id, String code, String name, String fullName,
            List<Airport> airports)?
        flights,
    TResult Function(String id, String name, Coordinates latLng)? hotels,
  }) {
    return hotels?.call(id, name, latLng);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String code,
            String name,
            String fullName,
            String type,
            String city,
            String state,
            String country,
            List<Airport> airports)?
        $default, {
    TResult Function(String id, String code, String name, String fullName,
            List<Airport> airports)?
        flights,
    TResult Function(String id, String name, Coordinates latLng)? hotels,
    required TResult orElse(),
  }) {
    if (hotels != null) {
      return hotels(id, name, latLng);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Location value) $default, {
    required TResult Function(LocationFlights value) flights,
    required TResult Function(LocationHotels value) hotels,
  }) {
    return hotels(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_Location value)? $default, {
    TResult Function(LocationFlights value)? flights,
    TResult Function(LocationHotels value)? hotels,
  }) {
    return hotels?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Location value)? $default, {
    TResult Function(LocationFlights value)? flights,
    TResult Function(LocationHotels value)? hotels,
    required TResult orElse(),
  }) {
    if (hotels != null) {
      return hotels(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationHotelsToJson(this);
  }
}

abstract class LocationHotels implements Location {
  const factory LocationHotels(
      {String id, String name, required Coordinates latLng}) = _$LocationHotels;

  factory LocationHotels.fromJson(Map<String, dynamic> json) =
      _$LocationHotels.fromJson;

  @override
  String get id;
  @override
  String get name;
  Coordinates get latLng;
  @override
  @JsonKey(ignore: true)
  $LocationHotelsCopyWith<LocationHotels> get copyWith =>
      throw _privateConstructorUsedError;
}

Coordinates _$CoordinatesFromJson(Map<String, dynamic> json) {
  return _Coordinates.fromJson(json);
}

/// @nodoc
class _$CoordinatesTearOff {
  const _$CoordinatesTearOff();

  _Coordinates call({double lat = 0, double long = 0}) {
    return _Coordinates(
      lat: lat,
      long: long,
    );
  }

  Coordinates fromJson(Map<String, Object?> json) {
    return Coordinates.fromJson(json);
  }
}

/// @nodoc
const $Coordinates = _$CoordinatesTearOff();

/// @nodoc
mixin _$Coordinates {
  double get lat => throw _privateConstructorUsedError;
  double get long => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoordinatesCopyWith<Coordinates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinatesCopyWith<$Res> {
  factory $CoordinatesCopyWith(
          Coordinates value, $Res Function(Coordinates) then) =
      _$CoordinatesCopyWithImpl<$Res>;
  $Res call({double lat, double long});
}

/// @nodoc
class _$CoordinatesCopyWithImpl<$Res> implements $CoordinatesCopyWith<$Res> {
  _$CoordinatesCopyWithImpl(this._value, this._then);

  final Coordinates _value;
  // ignore: unused_field
  final $Res Function(Coordinates) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? long = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: long == freezed
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$CoordinatesCopyWith<$Res>
    implements $CoordinatesCopyWith<$Res> {
  factory _$CoordinatesCopyWith(
          _Coordinates value, $Res Function(_Coordinates) then) =
      __$CoordinatesCopyWithImpl<$Res>;
  @override
  $Res call({double lat, double long});
}

/// @nodoc
class __$CoordinatesCopyWithImpl<$Res> extends _$CoordinatesCopyWithImpl<$Res>
    implements _$CoordinatesCopyWith<$Res> {
  __$CoordinatesCopyWithImpl(
      _Coordinates _value, $Res Function(_Coordinates) _then)
      : super(_value, (v) => _then(v as _Coordinates));

  @override
  _Coordinates get _value => super._value as _Coordinates;

  @override
  $Res call({
    Object? lat = freezed,
    Object? long = freezed,
  }) {
    return _then(_Coordinates(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: long == freezed
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Coordinates implements _Coordinates {
  const _$_Coordinates({this.lat = 0, this.long = 0});

  factory _$_Coordinates.fromJson(Map<String, dynamic> json) =>
      _$$_CoordinatesFromJson(json);

  @JsonKey()
  @override
  final double lat;
  @JsonKey()
  @override
  final double long;

  @override
  String toString() {
    return 'Coordinates(lat: $lat, long: $long)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Coordinates &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.long, long));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(long));

  @JsonKey(ignore: true)
  @override
  _$CoordinatesCopyWith<_Coordinates> get copyWith =>
      __$CoordinatesCopyWithImpl<_Coordinates>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoordinatesToJson(this);
  }
}

abstract class _Coordinates implements Coordinates {
  const factory _Coordinates({double lat, double long}) = _$_Coordinates;

  factory _Coordinates.fromJson(Map<String, dynamic> json) =
      _$_Coordinates.fromJson;

  @override
  double get lat;
  @override
  double get long;
  @override
  @JsonKey(ignore: true)
  _$CoordinatesCopyWith<_Coordinates> get copyWith =>
      throw _privateConstructorUsedError;
}
