import 'package:flutter_riverpod/flutter_riverpod.dart';

final adultRoomMemberCount = StateProvider<int>((ref) => 1);
final childrenRoomMemberCount = StateProvider<int>((ref) => 0);
final childrenAgeCount = StateProvider<int>((ref) => 0);

final totalRoom = StateProvider<int>((ref) => 1);
final totalGuest = StateProvider<int>((ref) => 0);
