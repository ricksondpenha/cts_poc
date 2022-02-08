// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'travellers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TravellersTearOff {
  const _$TravellersTearOff();

  _Travellers call({required List<Traveller> travellers}) {
    return _Travellers(
      travellers: travellers,
    );
  }
}

/// @nodoc
const $Travellers = _$TravellersTearOff();

/// @nodoc
mixin _$Travellers {
  List<Traveller> get travellers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TravellersCopyWith<Travellers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravellersCopyWith<$Res> {
  factory $TravellersCopyWith(
          Travellers value, $Res Function(Travellers) then) =
      _$TravellersCopyWithImpl<$Res>;
  $Res call({List<Traveller> travellers});
}

/// @nodoc
class _$TravellersCopyWithImpl<$Res> implements $TravellersCopyWith<$Res> {
  _$TravellersCopyWithImpl(this._value, this._then);

  final Travellers _value;
  // ignore: unused_field
  final $Res Function(Travellers) _then;

  @override
  $Res call({
    Object? travellers = freezed,
  }) {
    return _then(_value.copyWith(
      travellers: travellers == freezed
          ? _value.travellers
          : travellers // ignore: cast_nullable_to_non_nullable
              as List<Traveller>,
    ));
  }
}

/// @nodoc
abstract class _$TravellersCopyWith<$Res> implements $TravellersCopyWith<$Res> {
  factory _$TravellersCopyWith(
          _Travellers value, $Res Function(_Travellers) then) =
      __$TravellersCopyWithImpl<$Res>;
  @override
  $Res call({List<Traveller> travellers});
}

/// @nodoc
class __$TravellersCopyWithImpl<$Res> extends _$TravellersCopyWithImpl<$Res>
    implements _$TravellersCopyWith<$Res> {
  __$TravellersCopyWithImpl(
      _Travellers _value, $Res Function(_Travellers) _then)
      : super(_value, (v) => _then(v as _Travellers));

  @override
  _Travellers get _value => super._value as _Travellers;

  @override
  $Res call({
    Object? travellers = freezed,
  }) {
    return _then(_Travellers(
      travellers: travellers == freezed
          ? _value.travellers
          : travellers // ignore: cast_nullable_to_non_nullable
              as List<Traveller>,
    ));
  }
}

/// @nodoc

class _$_Travellers implements _Travellers {
  const _$_Travellers({required this.travellers});

  @override
  final List<Traveller> travellers;

  @override
  String toString() {
    return 'Travellers(travellers: $travellers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Travellers &&
            const DeepCollectionEquality()
                .equals(other.travellers, travellers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(travellers));

  @JsonKey(ignore: true)
  @override
  _$TravellersCopyWith<_Travellers> get copyWith =>
      __$TravellersCopyWithImpl<_Travellers>(this, _$identity);
}

abstract class _Travellers implements Travellers {
  const factory _Travellers({required List<Traveller> travellers}) =
      _$_Travellers;

  @override
  List<Traveller> get travellers;
  @override
  @JsonKey(ignore: true)
  _$TravellersCopyWith<_Travellers> get copyWith =>
      throw _privateConstructorUsedError;
}

Traveller _$TravellerFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'flight':
      return TravellersFlight.fromJson(json);
    case 'hotel':
      return TravellersHotel.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Traveller',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$TravellerTearOff {
  const _$TravellerTearOff();

  TravellersFlight flight({int adults = 1, int child = 0, int infants = 0}) {
    return TravellersFlight(
      adults: adults,
      child: child,
      infants: infants,
    );
  }

  TravellersHotel hotel(
      {int numOfAdults = 1,
      @JsonKey(includeIfNull: false) List<int>? childAges}) {
    return TravellersHotel(
      numOfAdults: numOfAdults,
      childAges: childAges,
    );
  }

  Traveller fromJson(Map<String, Object?> json) {
    return Traveller.fromJson(json);
  }
}

/// @nodoc
const $Traveller = _$TravellerTearOff();

/// @nodoc
mixin _$Traveller {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int adults, int child, int infants) flight,
    required TResult Function(int numOfAdults,
            @JsonKey(includeIfNull: false) List<int>? childAges)
        hotel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int adults, int child, int infants)? flight,
    TResult Function(int numOfAdults,
            @JsonKey(includeIfNull: false) List<int>? childAges)?
        hotel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int adults, int child, int infants)? flight,
    TResult Function(int numOfAdults,
            @JsonKey(includeIfNull: false) List<int>? childAges)?
        hotel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TravellersFlight value) flight,
    required TResult Function(TravellersHotel value) hotel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TravellersFlight value)? flight,
    TResult Function(TravellersHotel value)? hotel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TravellersFlight value)? flight,
    TResult Function(TravellersHotel value)? hotel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravellerCopyWith<$Res> {
  factory $TravellerCopyWith(Traveller value, $Res Function(Traveller) then) =
      _$TravellerCopyWithImpl<$Res>;
}

/// @nodoc
class _$TravellerCopyWithImpl<$Res> implements $TravellerCopyWith<$Res> {
  _$TravellerCopyWithImpl(this._value, this._then);

  final Traveller _value;
  // ignore: unused_field
  final $Res Function(Traveller) _then;
}

/// @nodoc
abstract class $TravellersFlightCopyWith<$Res> {
  factory $TravellersFlightCopyWith(
          TravellersFlight value, $Res Function(TravellersFlight) then) =
      _$TravellersFlightCopyWithImpl<$Res>;
  $Res call({int adults, int child, int infants});
}

/// @nodoc
class _$TravellersFlightCopyWithImpl<$Res> extends _$TravellerCopyWithImpl<$Res>
    implements $TravellersFlightCopyWith<$Res> {
  _$TravellersFlightCopyWithImpl(
      TravellersFlight _value, $Res Function(TravellersFlight) _then)
      : super(_value, (v) => _then(v as TravellersFlight));

  @override
  TravellersFlight get _value => super._value as TravellersFlight;

  @override
  $Res call({
    Object? adults = freezed,
    Object? child = freezed,
    Object? infants = freezed,
  }) {
    return _then(TravellersFlight(
      adults: adults == freezed
          ? _value.adults
          : adults // ignore: cast_nullable_to_non_nullable
              as int,
      child: child == freezed
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as int,
      infants: infants == freezed
          ? _value.infants
          : infants // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravellersFlight implements TravellersFlight {
  const _$TravellersFlight(
      {this.adults = 1, this.child = 0, this.infants = 0, String? $type})
      : $type = $type ?? 'flight';

  factory _$TravellersFlight.fromJson(Map<String, dynamic> json) =>
      _$$TravellersFlightFromJson(json);

  @JsonKey()
  @override
  final int adults;
  @JsonKey()
  @override
  final int child;
  @JsonKey()
  @override
  final int infants;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Traveller.flight(adults: $adults, child: $child, infants: $infants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TravellersFlight &&
            const DeepCollectionEquality().equals(other.adults, adults) &&
            const DeepCollectionEquality().equals(other.child, child) &&
            const DeepCollectionEquality().equals(other.infants, infants));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(adults),
      const DeepCollectionEquality().hash(child),
      const DeepCollectionEquality().hash(infants));

  @JsonKey(ignore: true)
  @override
  $TravellersFlightCopyWith<TravellersFlight> get copyWith =>
      _$TravellersFlightCopyWithImpl<TravellersFlight>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int adults, int child, int infants) flight,
    required TResult Function(int numOfAdults,
            @JsonKey(includeIfNull: false) List<int>? childAges)
        hotel,
  }) {
    return flight(adults, child, infants);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int adults, int child, int infants)? flight,
    TResult Function(int numOfAdults,
            @JsonKey(includeIfNull: false) List<int>? childAges)?
        hotel,
  }) {
    return flight?.call(adults, child, infants);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int adults, int child, int infants)? flight,
    TResult Function(int numOfAdults,
            @JsonKey(includeIfNull: false) List<int>? childAges)?
        hotel,
    required TResult orElse(),
  }) {
    if (flight != null) {
      return flight(adults, child, infants);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TravellersFlight value) flight,
    required TResult Function(TravellersHotel value) hotel,
  }) {
    return flight(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TravellersFlight value)? flight,
    TResult Function(TravellersHotel value)? hotel,
  }) {
    return flight?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TravellersFlight value)? flight,
    TResult Function(TravellersHotel value)? hotel,
    required TResult orElse(),
  }) {
    if (flight != null) {
      return flight(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TravellersFlightToJson(this);
  }
}

abstract class TravellersFlight implements Traveller {
  const factory TravellersFlight({int adults, int child, int infants}) =
      _$TravellersFlight;

  factory TravellersFlight.fromJson(Map<String, dynamic> json) =
      _$TravellersFlight.fromJson;

  int get adults;
  int get child;
  int get infants;
  @JsonKey(ignore: true)
  $TravellersFlightCopyWith<TravellersFlight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravellersHotelCopyWith<$Res> {
  factory $TravellersHotelCopyWith(
          TravellersHotel value, $Res Function(TravellersHotel) then) =
      _$TravellersHotelCopyWithImpl<$Res>;
  $Res call(
      {int numOfAdults, @JsonKey(includeIfNull: false) List<int>? childAges});
}

/// @nodoc
class _$TravellersHotelCopyWithImpl<$Res> extends _$TravellerCopyWithImpl<$Res>
    implements $TravellersHotelCopyWith<$Res> {
  _$TravellersHotelCopyWithImpl(
      TravellersHotel _value, $Res Function(TravellersHotel) _then)
      : super(_value, (v) => _then(v as TravellersHotel));

  @override
  TravellersHotel get _value => super._value as TravellersHotel;

  @override
  $Res call({
    Object? numOfAdults = freezed,
    Object? childAges = freezed,
  }) {
    return _then(TravellersHotel(
      numOfAdults: numOfAdults == freezed
          ? _value.numOfAdults
          : numOfAdults // ignore: cast_nullable_to_non_nullable
              as int,
      childAges: childAges == freezed
          ? _value.childAges
          : childAges // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravellersHotel implements TravellersHotel {
  const _$TravellersHotel(
      {this.numOfAdults = 1,
      @JsonKey(includeIfNull: false) this.childAges,
      String? $type})
      : $type = $type ?? 'hotel';

  factory _$TravellersHotel.fromJson(Map<String, dynamic> json) =>
      _$$TravellersHotelFromJson(json);

  @JsonKey()
  @override
  final int numOfAdults;
  @override
  @JsonKey(includeIfNull: false)
  final List<int>? childAges;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Traveller.hotel(numOfAdults: $numOfAdults, childAges: $childAges)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TravellersHotel &&
            const DeepCollectionEquality()
                .equals(other.numOfAdults, numOfAdults) &&
            const DeepCollectionEquality().equals(other.childAges, childAges));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(numOfAdults),
      const DeepCollectionEquality().hash(childAges));

  @JsonKey(ignore: true)
  @override
  $TravellersHotelCopyWith<TravellersHotel> get copyWith =>
      _$TravellersHotelCopyWithImpl<TravellersHotel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int adults, int child, int infants) flight,
    required TResult Function(int numOfAdults,
            @JsonKey(includeIfNull: false) List<int>? childAges)
        hotel,
  }) {
    return hotel(numOfAdults, childAges);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int adults, int child, int infants)? flight,
    TResult Function(int numOfAdults,
            @JsonKey(includeIfNull: false) List<int>? childAges)?
        hotel,
  }) {
    return hotel?.call(numOfAdults, childAges);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int adults, int child, int infants)? flight,
    TResult Function(int numOfAdults,
            @JsonKey(includeIfNull: false) List<int>? childAges)?
        hotel,
    required TResult orElse(),
  }) {
    if (hotel != null) {
      return hotel(numOfAdults, childAges);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TravellersFlight value) flight,
    required TResult Function(TravellersHotel value) hotel,
  }) {
    return hotel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TravellersFlight value)? flight,
    TResult Function(TravellersHotel value)? hotel,
  }) {
    return hotel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TravellersFlight value)? flight,
    TResult Function(TravellersHotel value)? hotel,
    required TResult orElse(),
  }) {
    if (hotel != null) {
      return hotel(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TravellersHotelToJson(this);
  }
}

abstract class TravellersHotel implements Traveller {
  const factory TravellersHotel(
      {int numOfAdults,
      @JsonKey(includeIfNull: false) List<int>? childAges}) = _$TravellersHotel;

  factory TravellersHotel.fromJson(Map<String, dynamic> json) =
      _$TravellersHotel.fromJson;

  int get numOfAdults;
  @JsonKey(includeIfNull: false)
  List<int>? get childAges;
  @JsonKey(ignore: true)
  $TravellersHotelCopyWith<TravellersHotel> get copyWith =>
      throw _privateConstructorUsedError;
}
