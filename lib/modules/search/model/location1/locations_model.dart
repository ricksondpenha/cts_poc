/// locations : [{"countryName":"Mumbai, India","airportName":"Chhatrapati shivaji terminal","countryCode":"BOB","countryId":"1"},{"countryName":"Delhi, India","airportName":"Indra Gandhi terminal","countryCode":"DOB","countryId":"1"},{"countryName":"Bengaluru, India","airportName":"Bangluri  Ariport terminal","countryCode":"BOB","countryId":"1"},{"countryName":"Ahmedabad, India","airportName":"Ahmedabad  terminal","countryCode":"BOB","countryId":"1"}]

class LocationsModel {
  LocationsModel({
    List<Locations>? locations,
  }) {
    _locations = locations;
  }

  LocationsModel.fromJson(dynamic json) {
    if (json['locations'] != null) {
      _locations = [];
      json['locations'].forEach((v) {
        _locations?.add(Locations.fromJson(v));
      });
    }
  }
  List<Locations>? _locations;

  List<Locations>? get locations => _locations;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_locations != null) {
      map['locations'] = _locations?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// countryName : "Mumbai, India"
/// airportName : "Chhatrapati shivaji terminal"
/// countryCode : "BOB"
/// countryId : "1"

class Locations {
  Locations({
    String? countryName,
    String? airportName,
    String? countryCode,
    String? countryId,
  }) {
    _countryName = countryName;
    _airportName = airportName;
    _countryCode = countryCode;
    _countryId = countryId;
  }

  Locations.fromJson(dynamic json) {
    _countryName = json['countryName'];
    _airportName = json['airportName'];
    _countryCode = json['countryCode'];
    _countryId = json['countryId'];
  }
  String? _countryName;
  String? _airportName;
  String? _countryCode;
  String? _countryId;

  String? get countryName => _countryName;
  String? get airportName => _airportName;
  String? get countryCode => _countryCode;
  String? get countryId => _countryId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['countryName'] = _countryName;
    map['airportName'] = _airportName;
    map['countryCode'] = _countryCode;
    map['countryId'] = _countryId;
    return map;
  }
}
