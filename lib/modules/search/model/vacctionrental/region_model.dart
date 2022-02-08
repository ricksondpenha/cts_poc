/// Regions : [{"RegionName":"Africa","RegionCode":"1"},{"RegionName":"Asia","RegionCode":"2"},{"RegionName":"Caribbean","RegionCode":"3"},{"RegionName":"Central America","RegionCode":"4"},{"RegionName":"Europe","RegionCode":"5"},{"RegionName":"North America","RegionCode":"6"},{"RegionName":"Oceania","RegionCode":"7"},{"RegionName":"South America","RegionCode":"8"}]

class RegionModel {
  RegionModel({
    List<Regions>? regions,
  }) {
    _regions = regions;
  }

  RegionModel.fromJson(dynamic json) {
    if (json['Regions'] != null) {
      _regions = [];
      json['Regions'].forEach((v) {
        _regions?.add(Regions.fromJson(v));
      });
    }
  }
  List<Regions>? _regions;

  List<Regions>? get regions => _regions;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_regions != null) {
      map['Regions'] = _regions?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// RegionName : "Africa"
/// RegionCode : "1"

class Regions {
  Regions({
    String? regionName,
    String? regionCode,
  }) {
    _regionName = regionName;
    _regionCode = regionCode;
  }

  Regions.fromJson(dynamic json) {
    _regionName = json['RegionName'];
    _regionCode = json['RegionCode'];
  }
  String? _regionName;
  String? _regionCode;

  String? get regionName => _regionName;
  String? get regionCode => _regionCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['RegionName'] = _regionName;
    map['RegionCode'] = _regionCode;
    return map;
  }
}
