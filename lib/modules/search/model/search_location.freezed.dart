// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchLocation _$SearchLocationFromJson(Map<String, dynamic> json) {
  return _SearchLocation.fromJson(json);
}

/// @nodoc
class _$SearchLocationTearOff {
  const _$SearchLocationTearOff();

  _SearchLocation call({List<LocationSearch> locations = const []}) {
    return _SearchLocation(
      locations: locations,
    );
  }

  SearchLocation fromJson(Map<String, Object?> json) {
    return SearchLocation.fromJson(json);
  }
}

/// @nodoc
const $SearchLocation = _$SearchLocationTearOff();

/// @nodoc
mixin _$SearchLocation {
  List<LocationSearch> get locations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchLocationCopyWith<SearchLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchLocationCopyWith<$Res> {
  factory $SearchLocationCopyWith(
          SearchLocation value, $Res Function(SearchLocation) then) =
      _$SearchLocationCopyWithImpl<$Res>;
  $Res call({List<LocationSearch> locations});
}

/// @nodoc
class _$SearchLocationCopyWithImpl<$Res>
    implements $SearchLocationCopyWith<$Res> {
  _$SearchLocationCopyWithImpl(this._value, this._then);

  final SearchLocation _value;
  // ignore: unused_field
  final $Res Function(SearchLocation) _then;

  @override
  $Res call({
    Object? locations = freezed,
  }) {
    return _then(_value.copyWith(
      locations: locations == freezed
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LocationSearch>,
    ));
  }
}

/// @nodoc
abstract class _$SearchLocationCopyWith<$Res>
    implements $SearchLocationCopyWith<$Res> {
  factory _$SearchLocationCopyWith(
          _SearchLocation value, $Res Function(_SearchLocation) then) =
      __$SearchLocationCopyWithImpl<$Res>;
  @override
  $Res call({List<LocationSearch> locations});
}

/// @nodoc
class __$SearchLocationCopyWithImpl<$Res>
    extends _$SearchLocationCopyWithImpl<$Res>
    implements _$SearchLocationCopyWith<$Res> {
  __$SearchLocationCopyWithImpl(
      _SearchLocation _value, $Res Function(_SearchLocation) _then)
      : super(_value, (v) => _then(v as _SearchLocation));

  @override
  _SearchLocation get _value => super._value as _SearchLocation;

  @override
  $Res call({
    Object? locations = freezed,
  }) {
    return _then(_SearchLocation(
      locations: locations == freezed
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LocationSearch>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchLocation implements _SearchLocation {
  const _$_SearchLocation({this.locations = const []});

  factory _$_SearchLocation.fromJson(Map<String, dynamic> json) =>
      _$$_SearchLocationFromJson(json);

  @JsonKey()
  @override
  final List<LocationSearch> locations;

  @override
  String toString() {
    return 'SearchLocation(locations: $locations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchLocation &&
            const DeepCollectionEquality().equals(other.locations, locations));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(locations));

  @JsonKey(ignore: true)
  @override
  _$SearchLocationCopyWith<_SearchLocation> get copyWith =>
      __$SearchLocationCopyWithImpl<_SearchLocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchLocationToJson(this);
  }
}

abstract class _SearchLocation implements SearchLocation {
  const factory _SearchLocation({List<LocationSearch> locations}) =
      _$_SearchLocation;

  factory _SearchLocation.fromJson(Map<String, dynamic> json) =
      _$_SearchLocation.fromJson;

  @override
  List<LocationSearch> get locations;
  @override
  @JsonKey(ignore: true)
  _$SearchLocationCopyWith<_SearchLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationSearch _$LocationSearchFromJson(Map<String, dynamic> json) {
  return _LocationSearch.fromJson(json);
}

/// @nodoc
class _$LocationSearchTearOff {
  const _$LocationSearchTearOff();

  _LocationSearch call({required int id, String name = '', String type = ''}) {
    return _LocationSearch(
      id: id,
      name: name,
      type: type,
    );
  }

  LocationSearch fromJson(Map<String, Object?> json) {
    return LocationSearch.fromJson(json);
  }
}

/// @nodoc
const $LocationSearch = _$LocationSearchTearOff();

/// @nodoc
mixin _$LocationSearch {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationSearchCopyWith<LocationSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationSearchCopyWith<$Res> {
  factory $LocationSearchCopyWith(
          LocationSearch value, $Res Function(LocationSearch) then) =
      _$LocationSearchCopyWithImpl<$Res>;
  $Res call({int id, String name, String type});
}

/// @nodoc
class _$LocationSearchCopyWithImpl<$Res>
    implements $LocationSearchCopyWith<$Res> {
  _$LocationSearchCopyWithImpl(this._value, this._then);

  final LocationSearch _value;
  // ignore: unused_field
  final $Res Function(LocationSearch) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LocationSearchCopyWith<$Res>
    implements $LocationSearchCopyWith<$Res> {
  factory _$LocationSearchCopyWith(
          _LocationSearch value, $Res Function(_LocationSearch) then) =
      __$LocationSearchCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String type});
}

/// @nodoc
class __$LocationSearchCopyWithImpl<$Res>
    extends _$LocationSearchCopyWithImpl<$Res>
    implements _$LocationSearchCopyWith<$Res> {
  __$LocationSearchCopyWithImpl(
      _LocationSearch _value, $Res Function(_LocationSearch) _then)
      : super(_value, (v) => _then(v as _LocationSearch));

  @override
  _LocationSearch get _value => super._value as _LocationSearch;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
  }) {
    return _then(_LocationSearch(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationSearch implements _LocationSearch {
  const _$_LocationSearch({required this.id, this.name = '', this.type = ''});

  factory _$_LocationSearch.fromJson(Map<String, dynamic> json) =>
      _$$_LocationSearchFromJson(json);

  @override
  final int id;
  @JsonKey()
  @override
  final String name;
  @JsonKey()
  @override
  final String type;

  @override
  String toString() {
    return 'LocationSearch(id: $id, name: $name, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationSearch &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$LocationSearchCopyWith<_LocationSearch> get copyWith =>
      __$LocationSearchCopyWithImpl<_LocationSearch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationSearchToJson(this);
  }
}

abstract class _LocationSearch implements LocationSearch {
  const factory _LocationSearch({required int id, String name, String type}) =
      _$_LocationSearch;

  factory _LocationSearch.fromJson(Map<String, dynamic> json) =
      _$_LocationSearch.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$LocationSearchCopyWith<_LocationSearch> get copyWith =>
      throw _privateConstructorUsedError;
}
