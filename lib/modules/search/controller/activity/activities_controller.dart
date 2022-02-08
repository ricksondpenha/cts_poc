import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../model/activity/activities_model.dart';
import '../../repository/activity/activities_repository.dart';

final getActivityController =
    FutureProvider<ActivityModel>((ref) => getActivites());
