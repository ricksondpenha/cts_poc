import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../model/vacctionrental/region_model.dart';
import '../../repository/vacctionrental/regionrespository.dart';

final getRegionController = FutureProvider<RegionModel>((ref) => getRegions());
