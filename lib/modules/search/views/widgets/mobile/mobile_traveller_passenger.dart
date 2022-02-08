import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../room_section.dart';
import '../web/Travellerpassenger/traveller_custom_design.dart';

class MobileTravellerPassenger extends ConsumerWidget {
  final String labelKey;

  const MobileTravellerPassenger({Key? key, required this.labelKey})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late String title;
    late String desc = '';
    if (labelKey.toString() == 'flight') {
      title = 'Traveller & Guest';
      desc = 'Click to add';
    }
    if (labelKey.toString() == 'hotel') {
      title = 'Guest';
      desc = 'Add Room';
    }
    if (labelKey.toString() == 'vr') {
      title = 'Guest';
      desc = 'Click to add';
    }
    if (labelKey.toString() == 'nha') {
      title = 'Guest';
      desc = 'Click to add';
    }
    if (labelKey.toString() == 'activities') {
      title = 'Guest';
      desc = 'Click to add';
    }
    if (labelKey.toString() == 'car') {
      title = 'Guest';
    }
    if (labelKey.toString() == 'hotel' ||
        labelKey.toString() == 'flight' ||
        labelKey.toString() == 'nha') {
      return Wrap(
        direction: Axis.horizontal,
        runSpacing: 10,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
            child: InkWell(
              onTap: () {
                // Mobile Location Logical Here
                if (labelKey.toString() == 'flight') {
                  showDialog(
                    //  barrierColor: Colors.white70,
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      // ignore: use_full_hex_values_for_flutter_colors
                      backgroundColor: const Color(0xFFBC99948),
                      actions: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SizedBox(
                            child: Wrap(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  // ignore: use_full_hex_values_for_flutter_colors
                                  color: const Color(0xffbc99948),
                                  child: TravellerCustomDesign(
                                      labelKey: 'TravellerClass'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }
                if (labelKey.toString() == 'hotel') {
                  showDialog(
                    //  barrierColor: Colors.white70,
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      // ignore: use_full_hex_values_for_flutter_colors
                      backgroundColor: const Color(0xffbc99948),
                      actions: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SizedBox(
                            child: Wrap(
                              children: [
                                Container(
                                  height: 180,
                                  padding: const EdgeInsets.all(2.0),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    //borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // MyStatefulWidget(),
                                      const Divider(
                                        height: 0,
                                        thickness: 3,
                                        color: Colors.blue,
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(20, 10, 0, 0),
                                        child: Text(
                                          'Room',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      // PremiumEconomy(),
                                      const AdultRoomCount(),
                                      const ChildrenRoomCount(),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) =>
                                                          AlertDialog(
                                                    title: const Text('Room'),
                                                    content: const Text(
                                                        'AlertDialog description'),
                                                    actions: <Widget>[
                                                      const AdultRoomCount(),
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                context,
                                                                'Cancel'),
                                                        child: const Text(
                                                            'Cancel'),
                                                      ),
                                                      TextButton(
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context, 'ok');
                                                          /*if (isDropdownOpen) {
                                                            floatingDropdown.remove();
                                                          } else {
                                                            findDropdownData();
                                                            floatingDropdown =
                                                                _createFloatingDropdown(ref);
                                                            Overlay.of(context)!
                                                                .insert(floatingDropdown);
                                                          }
                                                          isDropdownOpen = !isDropdownOpen;*/
                                                        },
                                                        child: const Text('OK'),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                              child: const Text(
                                                'Add Another Room',
                                                style: TextStyle(fontSize: 10),
                                              ),
                                            ),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              /*print("I Am at ${ref.read(adultRoomMemberCount)}");
                                              if (isDropdownOpen) {
                                                floatingDropdown.remove();
                                              } else {
                                                findDropdownData();
                                                floatingDropdown = _createFloatingDropdown(ref);
                                                Overlay.of(context)!.insert(floatingDropdown);
                                              }
                                              isDropdownOpen = !isDropdownOpen;*/
                                              //print('Rosna');
                                            },
                                            child: const Text(
                                              'Apply',
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                // ignore: use_full_hex_values_for_flutter_colors
                color: const Color(0xffbc99948),
                child: Wrap(
                  direction: Axis.vertical,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                      child: Wrap(
                        direction: Axis.vertical,
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Wrap(
                            direction: Axis.vertical,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: desc,
                                        style: const TextStyle(
                                          color: Colors.white70,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                ),
                              ),

                              /*IconButton(
                      icon: Icon(
                        Icons.eleven_mp,
                        size: 10,
                        color: Colors.white70,
                      ),
                      onPressed: null,
                      ),*/
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
