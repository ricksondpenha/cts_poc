import 'package:flutter/material.dart';
import 'search_type.dart';

// Maps the [SearchType] to its corresponding icon
Map<SearchType, IconData> searchTypeIcons = {
  SearchType.flights: Icons.flight,
  SearchType.hotels: Icons.hotel,
  SearchType.nha: Icons.home_work_outlined,
  SearchType.vr: Icons.house_outlined,
  SearchType.activities: Icons.snowboarding,
  SearchType.car: Icons.directions_car,
};
