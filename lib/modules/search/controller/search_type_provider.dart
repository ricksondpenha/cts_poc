import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/models.dart';

final searchTypeProvider =
    StateProvider<SearchType>((ref) => SearchType.flights);
