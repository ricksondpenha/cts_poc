import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'passengerSection/passengerprovider.dart';
import 'DateSection/returndateprovider.dart';
import 'location/locationfromprovider.dart';
import '../module.dart';
import 'DateSection/departuredateprovider.dart';
import 'location/locationdestinationprovider.dart';

final searchQueryProvider = StateProvider<SearchQuery>((ref) {
  final searchType = ref.watch(searchTypeProvider);
  switch (searchType) {
    case SearchType.flights:
      return SearchQuery.flights(
        startDate: ref.watch(dateFromSelection),
        endDate: ref.watch(returndateToSelection),
        startLocation: LocationFlights(name: ref.watch(locationFromSelection)),
        endLocation: LocationFlights(name: ref.watch(locationToSelection)),
      );
    case SearchType.hotels:
      return SearchQuery.hotels(
        type: 'hotel',
        checkIn: ref.watch(dateFromSelection),
        checkOut: ref.watch(returndateToSelection),
        locationid: '9527',
        locationName: 'Las Vegas',
        coordinates: const Coordinates(lat: 0, long: 0),
        occupancies: [
          TravellersHotel(
            numOfAdults: ref.read(adultPassengerCount),
            childAges: [],
          )
        ],
      );
    case SearchType.nha:
      return SearchQuery.hotels(
        type: 'nha',
        checkIn: ref.watch(dateFromSelection),
        checkOut: ref.watch(returndateToSelection),
        locationid: '9527',
        locationName: 'Las Vegas',
        coordinates: const Coordinates(lat: 0, long: 0),
        occupancies: [
          TravellersHotel(
            numOfAdults: ref.read(adultPassengerCount),
          )
        ],
      );
    default:
      return SearchQuery.flights(
        startDate: ref.watch(dateFromSelection),
        endDate: ref.watch(returndateToSelection),
        startLocation: LocationFlights(name: ref.watch(locationFromSelection)),
        endLocation: LocationFlights(name: ref.watch(locationToSelection)),
      );
  }
});
