// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'airport.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Airport _$AirportFromJson(Map<String, dynamic> json) {
  return _Airport.fromJson(json);
}

/// @nodoc
class _$AirportTearOff {
  const _$AirportTearOff();

  _Airport call({String? code = '', String? type = '', String? name = ''}) {
    return _Airport(
      code: code,
      type: type,
      name: name,
    );
  }

  Airport fromJson(Map<String, Object?> json) {
    return Airport.fromJson(json);
  }
}

/// @nodoc
const $Airport = _$AirportTearOff();

/// @nodoc
mixin _$Airport {
  String? get code => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AirportCopyWith<Airport> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirportCopyWith<$Res> {
  factory $AirportCopyWith(Airport value, $Res Function(Airport) then) =
      _$AirportCopyWithImpl<$Res>;
  $Res call({String? code, String? type, String? name});
}

/// @nodoc
class _$AirportCopyWithImpl<$Res> implements $AirportCopyWith<$Res> {
  _$AirportCopyWithImpl(this._value, this._then);

  final Airport _value;
  // ignore: unused_field
  final $Res Function(Airport) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? type = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AirportCopyWith<$Res> implements $AirportCopyWith<$Res> {
  factory _$AirportCopyWith(_Airport value, $Res Function(_Airport) then) =
      __$AirportCopyWithImpl<$Res>;
  @override
  $Res call({String? code, String? type, String? name});
}

/// @nodoc
class __$AirportCopyWithImpl<$Res> extends _$AirportCopyWithImpl<$Res>
    implements _$AirportCopyWith<$Res> {
  __$AirportCopyWithImpl(_Airport _value, $Res Function(_Airport) _then)
      : super(_value, (v) => _then(v as _Airport));

  @override
  _Airport get _value => super._value as _Airport;

  @override
  $Res call({
    Object? code = freezed,
    Object? type = freezed,
    Object? name = freezed,
  }) {
    return _then(_Airport(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Airport implements _Airport {
  const _$_Airport({this.code = '', this.type = '', this.name = ''});

  factory _$_Airport.fromJson(Map<String, dynamic> json) =>
      _$$_AirportFromJson(json);

  @JsonKey()
  @override
  final String? code;
  @JsonKey()
  @override
  final String? type;
  @JsonKey()
  @override
  final String? name;

  @override
  String toString() {
    return 'Airport(code: $code, type: $type, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Airport &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$AirportCopyWith<_Airport> get copyWith =>
      __$AirportCopyWithImpl<_Airport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AirportToJson(this);
  }
}

abstract class _Airport implements Airport {
  const factory _Airport({String? code, String? type, String? name}) =
      _$_Airport;

  factory _Airport.fromJson(Map<String, dynamic> json) = _$_Airport.fromJson;

  @override
  String? get code;
  @override
  String? get type;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$AirportCopyWith<_Airport> get copyWith =>
      throw _privateConstructorUsedError;
}
