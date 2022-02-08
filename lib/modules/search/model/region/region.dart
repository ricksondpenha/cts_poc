import 'package:freezed_annotation/freezed_annotation.dart';
part 'region.freezed.dart';
part 'region.g.dart';

@freezed
class Region with _$Region {
  const factory Region({
    @Default('') String id,
    @Default('') String name,
  }) = _Region;

  factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);
}
