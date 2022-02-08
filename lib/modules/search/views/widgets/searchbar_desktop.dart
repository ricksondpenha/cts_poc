import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'search_button.dart';
import 'search_type/search_type_selector.dart';
import '../../../search/views/widgets/web/DateSection/depaturedatesection.dart';
import '../../../search/views/widgets/web/DateSection/returndatesection.dart';
import '../../../search/views/widgets/web/DropWidget/drop_of_location.dart';
import '../../../search/views/widgets/web/DropWidget/dropoff.dart';
import '../../../search/views/widgets/web/NHAAccomodation/accommodation_type.dart';
import '../../../search/views/widgets/web/activity/destinationdropdown.dart';
import '../../../search/views/widgets/web/location/locationfrom.dart';
import '../../../search/views/widgets/web/location/locationtoo.dart';
import 'room_section.dart';
import 'web/DateSection/depaturedatesection.dart';
import 'web/DateSection/returndatesection.dart';
import 'web/DropWidget/drop_of_location.dart';
import 'web/DropWidget/dropoff.dart';
import 'web/NHAAccomodation/accommodation_type.dart';
import 'web/Travellerpassenger/traveller_custom_design.dart';
import 'web/activity/destinationdropdown.dart';
import 'web/location/locationfrom.dart';
import 'web/location/locationtoo.dart';
import 'web/trip/trip_custom_design.dart';
import 'web/vaccationrental/region_section.dart';

class SearchbarDesktop extends StatefulWidget {
  final bool searchBarColor;
  const SearchbarDesktop({Key? key, required this.searchBarColor})
      : super(key: key);

  @override
  State<SearchbarDesktop> createState() => _SearchbarDesktopState();
}

class _SearchbarDesktopState extends State<SearchbarDesktop> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, watch) {
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 60, horizontal: 40),
          color: widget.searchBarColor ? const Color(0xffC49546) : Colors.white,
          // color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          elevation: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SearchTypeSelector(),
              AccommodationType(
                  labelKey: 'Accommodation Type', title: 'Accommodation Type'),
              DropOffSection(
                labelkey: 'Car Section DropOff',
                title: 'Drop Off',
                desc: 'Destination',
              ),
              DestinationDropDown(labelKey: 'Acitivity', title: 'Destination'),
              RegionSection(
                labelKey: 'Region',
              ),
              TripCustomDesign(
                labelKey: 'tripKey',
              ),
              LocationFrom(
                title: '    FROM',
                desc: 'Add Location',
              ),
              LocationToo(
                title: '    TO',
                desc: 'Add Destination',
              ),
              DepatureDateSection(
                  labelKey: 'Depature Date', title: 'Depature Date'),
              DropOffLocation(
                title: 'Drop-off Location',
                desc: 'Drop-off Location',
                labelkey: 'Car Section',
              ),
              ReturnDateSection(
                labelKey: 'Return Date',
              ),
              TravellerCustomDesign(labelKey: 'TravellerClass'),
              RoomSection(labelKey: 'Hotel Booking', title: 'Guest'),
              const Spacer(),
              const SearchButton(),
            ],
          ),
        );
      },
    );
  }
}
