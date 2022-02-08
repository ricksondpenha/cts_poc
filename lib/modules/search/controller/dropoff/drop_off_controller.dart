import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../model/dropoff/drop_off_model.dart';
import '../../repository/dropoff/drop_off_controller.dart';

final getDropOffController =
    FutureProvider<DropOffModel>((ref) => getDropOffLocations());
