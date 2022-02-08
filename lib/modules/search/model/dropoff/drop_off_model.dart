/// dropoff : [{"DropofLocation":"Different","DropofCode":"1"},{"DropofLocation":"Location 2","DropofCode":"2"},{"DropofLocation":"Location 3","DropofCode":"3"},{"DropofLocation":"Location 4","DropofCode":"4"},{"DropofLocation":"Location 5","DropofCode":"5"},{"DropofLocation":"Location 6","DropofCode":"6"},{"DropofLocation":"Location 7","DropofCode":"7"},{"DropofLocation":"Location 8","DropofCode":"8"}]

class DropOffModel {
  DropOffModel({
    List<Dropoff>? dropoff,
  }) {
    _dropoff = dropoff;
  }

  DropOffModel.fromJson(dynamic json) {
    if (json['dropoff'] != null) {
      _dropoff = [];
      json['dropoff'].forEach((v) {
        _dropoff?.add(Dropoff.fromJson(v));
      });
    }
  }
  List<Dropoff>? _dropoff;

  List<Dropoff>? get dropoff => _dropoff;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_dropoff != null) {
      map['dropoff'] = _dropoff?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// DropofLocation : "Different"
/// DropofCode : "1"

class Dropoff {
  Dropoff({
    String? dropofLocation,
    String? dropofCode,
  }) {
    _dropofLocation = dropofLocation;
    _dropofCode = dropofCode;
  }

  Dropoff.fromJson(dynamic json) {
    _dropofLocation = json['DropofLocation'];
    _dropofCode = json['DropofCode'];
  }
  String? _dropofLocation;
  String? _dropofCode;

  String? get dropofLocation => _dropofLocation;
  String? get dropofCode => _dropofCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['DropofLocation'] = _dropofLocation;
    map['DropofCode'] = _dropofCode;
    return map;
  }
}
