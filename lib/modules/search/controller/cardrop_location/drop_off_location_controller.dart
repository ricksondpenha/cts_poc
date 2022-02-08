import 'package:cts_poc/modules/search/model/LocationDropOff/location_drop_off.dart';
import 'package:cts_poc/modules/search/repository/DropOfLocation/drop_of_location_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getDropOffController =
    FutureProvider<LocationDropOff>((ref) => getCarDropOffLocations());
