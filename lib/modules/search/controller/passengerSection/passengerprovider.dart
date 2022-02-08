import 'package:flutter_riverpod/flutter_riverpod.dart';

final adultPassengerCount = StateProvider<int>((ref) => 1);
final childrenPassengerCount = StateProvider<int>((ref) => 0);
final infantsPassengerCount = StateProvider<int>((ref) => 0);

final passengerEconomyPremiumClass = StateProvider((ref) => 'null');
final passengerEconomyClass = StateProvider((ref) => 'null');
final bussinessClass = StateProvider((ref) => 'null');
