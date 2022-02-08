import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/models.dart';
import '../views/widgets/room_section.dart';
import '../views/widgets/web/DateSection/returndatesection.dart';
import '../views/widgets/web/NHAAccomodation/accommodation_type.dart';
import '../views/widgets/web/Travellerpassenger/traveller_custom_design.dart';
import '../views/widgets/web/trip/trip_custom_design.dart';
import '../views/widgets/web/vaccationrental/region_section.dart';

/*
final selectSearchProvider = StateProvider<IconData>((ref) => Icons.flight);
final availableWidgetProvider = StateProvider((ref) => SearchType.flight);
*/
final selectSearchProvider = StateProvider<IconData>((ref) => Icons.villa);
final availableWidgetProvider = StateProvider((ref) => SearchType.hotels);

class CloseDropdownControlers {
  static void closeAllDropdown() {
    TravellerCustomDesign.closeDropdown();
    TripCustomDesign.closeDropdown();
    RoomSection.closeDropdown();
    ReturnDateSection.closeDropdown();
    RegionSection.closeDropdown();
    AccommodationType.closeDropdown();
  }
}
