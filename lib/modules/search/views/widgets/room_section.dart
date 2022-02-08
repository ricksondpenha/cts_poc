import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../module.dart';
import '../../controller/room_section.dart';
import '../../controller/searchprovider.dart';

class RoomSection extends ConsumerWidget {
  RoomSection({Key? key, required this.labelKey, required this.title})
      : super(key: key);
  String labelKey;
  String title;
  static bool isDropdownOpen = false;
  late GlobalKey actionKey;
  late double width, height, xPosition, yPosition;
  static late OverlayEntry floatingDropdown;

  static void closeDropdown() {
    if (isDropdownOpen) {
      isDropdownOpen = !isDropdownOpen;
      floatingDropdown.remove();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final roomcount = ref.watch(adultRoomMemberCount);
    final guestcount = ref.watch(childrenRoomMemberCount);
    actionKey = LabeledGlobalKey(labelKey);
    final select = ref.watch(searchTypeProvider);
    if (select == SearchType.nha) {
      title = 'Traveller & Class';
    } else if (select == SearchType.hotels) {
      title = 'Guest';
    }
    if (select == SearchType.hotels || select == SearchType.nha) {
      return Row(
        children: [
          const SizedBox(
            height: 38,
            child: VerticalDivider(),
          ),
          InkWell(
            key: actionKey,
            onTap: () {
              CloseDropdownControlers.closeAllDropdown();
              if (isDropdownOpen) {
                floatingDropdown.remove();
              } else {
                findDropdownData();
                floatingDropdown = _createFloatingDropdown(ref);
                Overlay.of(context)!.insert(floatingDropdown);
              }
              isDropdownOpen = !isDropdownOpen;
            },
            child: SizedBox(
              width: 120,
              height: 30,
              child: Column(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(2, 2, 0, 0),
                    child: Text(
                      '$roomcount Room $guestcount Guest',
                      style:
                          const TextStyle(fontSize: 12, color: Colors.black54),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }
    return const SizedBox();
  }

  void findDropdownData() {
    RenderBox? renderBox =
        actionKey.currentContext!.findRenderObject() as RenderBox?;
    height = renderBox!.size.height;
    width = renderBox.size.width;
    Offset offset = renderBox.localToGlobal(Offset.zero);
    xPosition = offset.dx;
    yPosition = offset.dy;
  }

  OverlayEntry _createFloatingDropdown(WidgetRef ref) {
    return OverlayEntry(
      builder: (context) => Positioned(
        left: xPosition,
        top: yPosition + height,
        width: width + width,
        child: Material(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          elevation: 10.0,
          child: Container(
            height: 350,
            padding: const EdgeInsets.all(2.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              //borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // MyStatefulWidget(),
                const Divider(
                  height: 0,
                  thickness: 3,
                  color: Colors.blue,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
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
                            builder: (BuildContext context) => AlertDialog(
                              title: const Text('Room'),
                              content: const Text('AlertDialog description'),
                              actions: <Widget>[
                                const AdultRoomCount(),
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(context, 'Cancel'),
                                  child: const Text('Cancel'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context, 'ok');
                                    if (isDropdownOpen) {
                                      floatingDropdown.remove();
                                    } else {
                                      findDropdownData();
                                      floatingDropdown =
                                          _createFloatingDropdown(ref);
                                      Overlay.of(context)!
                                          .insert(floatingDropdown);
                                    }
                                    isDropdownOpen = !isDropdownOpen;
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
                        if (isDropdownOpen) {
                          floatingDropdown.remove();
                        } else {
                          findDropdownData();
                          floatingDropdown = _createFloatingDropdown(ref);
                          Overlay.of(context)!.insert(floatingDropdown);
                        }
                        isDropdownOpen = !isDropdownOpen;
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
        ),
      ),
    );
  }
}

class ChildrenRoomCount extends StatefulWidget {
  const ChildrenRoomCount({Key? key}) : super(key: key);

  @override
  _ChildrenRoomCountState createState() => _ChildrenRoomCountState();
}

class _ChildrenRoomCountState extends State<ChildrenRoomCount> {
  int _strChildrenCount = 0;
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, watch) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const Text(
                  'Children\n(12y & Below)',
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: const Icon(Icons.remove),
                  color: Colors.blue,
                  iconSize: 13,
                  onPressed: () {
                    // minus();
                    setState(() {
                      if (_strChildrenCount > 0) _strChildrenCount--;
                      ref.read(childrenRoomMemberCount.notifier).state =
                          _strChildrenCount;
                      ref.read(childrenRoomMemberCount.notifier).state =
                          _strChildrenCount;

                      /* ref.read(adultPassengerCount).state = _n;*/
                    });
                  },
                ),
                Text('${ref.watch(childrenRoomMemberCount)}',
                    style:
                        const TextStyle(fontSize: 11, color: Colors.black54)),
                IconButton(
                  icon: const Icon(Icons.add),
                  iconSize: 13,
                  color: Colors.blue,
                  //tooltip: 'Increase volume by 10',
                  onPressed: () {
                    //add();
                    setState(() {
                      if (_strChildrenCount < 4) _strChildrenCount++;
                      ref.read(childrenRoomMemberCount.notifier).state =
                          _strChildrenCount;

                      //ref.read(adultPassengerCount).state = _n;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const Text(
                  'Child Age 1 ',
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: const Icon(Icons.remove),
                  color: Colors.blue,
                  iconSize: 13,
                  onPressed: () {
                    // minus();
                    setState(() {
                      if (_strChildrenCount > 0) _strChildrenCount--;
                      ref.read(childrenAgeCount.notifier).state =
                          _strChildrenCount;
                      ref.read(childrenAgeCount.notifier).state =
                          _strChildrenCount;

                      /* ref.read(adultPassengerCount).state = _n;*/
                    });
                  },
                ),
                Text('${ref.watch(childrenAgeCount)}',
                    style:
                        const TextStyle(fontSize: 11, color: Colors.black54)),
                IconButton(
                  icon: const Icon(Icons.add),
                  iconSize: 13,
                  color: Colors.blue,
                  //tooltip: 'Increase volume by 10',
                  onPressed: () {
                    //add();
                    setState(() {
                      if (_strChildrenCount < 4) _strChildrenCount++;
                      ref.read(childrenAgeCount.notifier).state =
                          _strChildrenCount;

                      //ref.read(adultPassengerCount).state = _n;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const Text(
                  'Child Age 1 ',
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: const Icon(Icons.remove),
                  color: Colors.blue,
                  iconSize: 13,
                  onPressed: () {
                    // minus();
                    setState(() {
                      if (_strChildrenCount > 0) _strChildrenCount--;
                      ref.read(childrenAgeCount.notifier).state =
                          _strChildrenCount;
                      ref.read(childrenAgeCount.notifier).state =
                          _strChildrenCount;

                      /* ref.read(adultPassengerCount).state = _n;*/
                    });
                  },
                ),
                Text('${ref.watch(childrenAgeCount)}',
                    style:
                        const TextStyle(fontSize: 11, color: Colors.black54)),
                IconButton(
                  icon: const Icon(Icons.add),
                  iconSize: 13,
                  color: Colors.blue,
                  //tooltip: 'Increase volume by 10',
                  onPressed: () {
                    //add();
                    setState(() {
                      if (_strChildrenCount < 4) _strChildrenCount++;
                      ref.read(childrenAgeCount.notifier).state =
                          _strChildrenCount;

                      //ref.read(adultPassengerCount).state = _n;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const Text(
                  'Child Age 1 ',
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: const Icon(Icons.remove),
                  color: Colors.blue,
                  iconSize: 13,
                  onPressed: () {
                    // minus();
                    setState(() {
                      if (_strChildrenCount > 0) _strChildrenCount--;
                      ref.read(childrenAgeCount.notifier).state =
                          _strChildrenCount;
                      ref.read(childrenAgeCount.notifier).state =
                          _strChildrenCount;

                      /* ref.read(adultPassengerCount).state = _n;*/
                    });
                  },
                ),
                Text('${ref.watch(childrenAgeCount)}',
                    style:
                        const TextStyle(fontSize: 11, color: Colors.black54)),
                IconButton(
                  icon: const Icon(Icons.add),
                  iconSize: 13,
                  color: Colors.blue,
                  //tooltip: 'Increase volume by 10',
                  onPressed: () {
                    //add();
                    setState(() {
                      if (_strChildrenCount < 4) _strChildrenCount++;
                      ref.read(childrenAgeCount.notifier).state =
                          _strChildrenCount;

                      //ref.read(adultPassengerCount).state = _n;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const Text(
                  'Child Age 1 ',
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: const Icon(Icons.remove),
                  color: Colors.blue,
                  iconSize: 13,
                  onPressed: () {
                    // minus();
                    setState(() {
                      if (_strChildrenCount > 0) _strChildrenCount--;
                      ref.read(childrenAgeCount.notifier).state =
                          _strChildrenCount;
                      ref.read(childrenAgeCount.notifier).state =
                          _strChildrenCount;

                      /* ref.read(adultPassengerCount).state = _n;*/
                    });
                  },
                ),
                Text('${ref.watch(childrenAgeCount)}',
                    style:
                        const TextStyle(fontSize: 11, color: Colors.black54)),
                IconButton(
                  icon: const Icon(Icons.add),
                  iconSize: 13,
                  color: Colors.blue,
                  //tooltip: 'Increase volume by 10',
                  onPressed: () {
                    //add();
                    setState(() {
                      if (_strChildrenCount < 4) _strChildrenCount++;
                      ref.read(childrenAgeCount.notifier).state =
                          _strChildrenCount;

                      //ref.read(adultPassengerCount).state = _n;
                    });
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

class AdultRoomCount extends StatefulWidget {
  const AdultRoomCount({Key? key}) : super(key: key);

  @override
  _AdultRoomCountState createState() => _AdultRoomCountState();
}

class _AdultRoomCountState extends State<AdultRoomCount> {
  int _strAdultCount = 1;
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, watch) {
        return Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const Text(
                'Adults\n(12Y +)',
                style: TextStyle(
                    fontSize: 10,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold),
              ),
              IconButton(
                icon: const Icon(Icons.remove),
                color: Colors.blue,
                iconSize: 13,
                onPressed: () {
                  // minus();
                  setState(() {
                    if (_strAdultCount > 1) _strAdultCount--;
                    ref.read(adultRoomMemberCount.notifier).state =
                        _strAdultCount;

                    /* ref.read(adultPassengerCount).state = _n;*/
                  });
                },
              ),
              Text('${ref.watch(adultRoomMemberCount)}',
                  style: const TextStyle(fontSize: 11, color: Colors.black54)),
              IconButton(
                icon: const Icon(Icons.add),
                iconSize: 13,
                color: Colors.blue,
                //tooltip: 'Increase volume by 10',
                onPressed: () {
                  //add();
                  setState(() {
                    if (_strAdultCount < 4) _strAdultCount++;
                    ref.read(adultRoomMemberCount.notifier).state =
                        _strAdultCount;
                    //ref.read(adultPassengerCount).state = _n;
                  });
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
