/// dropofLocaton : [{"DropLocation":"Different location ","DropCode":"1"},{"DropLocation":"Different Location 2","DropCode":"2"},{"DropLocation":" Different Location 3","DropCode":"3"},{"DropLocation":" Different Location 4","DropCode":"4"},{"DropLocation":"Different Location 5","DropCode":"Different 5"},{"DropLocation":"Different Location 6","DropCode":"Different 6"},{"DropLocation":"Different Location 7","DropCode":"Different 7"},{"DropLocation":"Different Location 8","DropCode":"Different 8"}]

class LocationDropOff {
  LocationDropOff({
    List<DropofLocaton>? dropofLocaton,
  }) {
    _dropofLocaton = dropofLocaton;
  }

  LocationDropOff.fromJson(dynamic json) {
    if (json['dropofLocaton'] != null) {
      _dropofLocaton = [];
      json['dropofLocaton'].forEach((v) {
        _dropofLocaton?.add(DropofLocaton.fromJson(v));
      });
    }
  }
  List<DropofLocaton>? _dropofLocaton;

  List<DropofLocaton>? get dropofLocaton => _dropofLocaton;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_dropofLocaton != null) {
      map['dropofLocaton'] = _dropofLocaton?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// DropLocation : "Different location "
/// DropCode : "1"

class DropofLocaton {
  DropofLocaton({
    String? dropLocation,
    String? dropCode,
  }) {
    _dropLocation = dropLocation;
    _dropCode = dropCode;
  }

  DropofLocaton.fromJson(dynamic json) {
    _dropLocation = json['DropLocation'];
    _dropCode = json['DropCode'];
  }
  String? _dropLocation;
  String? _dropCode;

  String? get dropLocation => _dropLocation;
  String? get dropCode => _dropCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['DropLocation'] = _dropLocation;
    map['DropCode'] = _dropCode;
    return map;
  }
}
