/// activity : [{"Destination":"Leisure","ActivityCode":"1"},{"Destination":"Leisure 2","ActivityCode":"2"},{"Destination":"Leisure 3","ActivityCode":"3"},{"Destination":"Leisure 4","ActivityCode":"4"},{"Destination":"Leisure 5","ActivityCode":"5"},{"Destination":"Leisure 6","ActivityCode":"6"},{"Destination":"Leisure 7","ActivityCode":"7"},{"Destination":"Leisure 8","ActivityCode":"8"}]

class ActivityModel {
  ActivityModel({
    List<Activities>? activity,
  }) {
    _activity = activity;
  }

  ActivityModel.fromJson(dynamic json) {
    if (json['activity'] != null) {
      _activity = [];
      json['activity'].forEach((v) {
        _activity?.add(Activities.fromJson(v));
      });
    }
  }
  List<Activities>? _activity;

  List<Activities>? get activity => _activity;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_activity != null) {
      map['activity'] = _activity?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// Destination : "Leisure"
/// ActivityCode : "1"

class Activities {
  Activities({
    String? destination,
    String? activityCode,
  }) {
    _destination = destination;
    _activityCode = activityCode;
  }

  Activities.fromJson(dynamic json) {
    _destination = json['Destination'];
    _activityCode = json['ActivityCode'];
  }
  String? _destination;
  String? _activityCode;

  String? get destination => _destination;
  String? get activityCode => _activityCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Destination'] = _destination;
    map['ActivityCode'] = _activityCode;
    return map;
  }
}
