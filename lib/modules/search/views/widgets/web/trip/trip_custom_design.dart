import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../module.dart';
import '../../../../controller/searchprovider.dart';
import '../../../../controller/tripsection/trip_provider.dart';

class TripCustomDesign extends ConsumerWidget {
  TripCustomDesign({Key? key, required this.labelKey}) : super(key: key);
  String labelKey;
  String radioItem = 'One Way';
  int id = 0;
  late String strradio;
  List<TripCustomList> tripList = [
    TripCustomList(name: 'One Way', index: 0),
    TripCustomList(name: 'Round Trip', index: 1),
    TripCustomList(name: 'Multi City', index: 2),
  ];

  late TripCustomList tripCustomList;
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
    radioItem = ref.watch(tripselection);

    actionKey = LabeledGlobalKey(labelKey);
    tripCustomList = tripList[id];
    final select = ref.watch(searchTypeProvider);
    if (select == SearchType.flights) {
      return InkWell(
        key: actionKey,
        borderRadius: BorderRadius.circular(0),
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
          width: 150,
          /*decoration: BoxDecoration(
          color: Colors.black12,
          // borderRadius: BorderRadius.circular(20.0),
        ),*/
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 12, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text(
                  'TRIP',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      radioItem,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.black54,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black54,
                      size: 28,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }

    return const SizedBox.shrink();
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

  OverlayEntry _createFloatingDropdown(ref) {
    return OverlayEntry(
      builder: (context) => Positioned(
        left: xPosition,
        top: yPosition + height,
        width: width,
        child: Material(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          elevation: 10.0,
          child: Container(
            padding: const EdgeInsets.all(2.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              //borderRadius: BorderRadius.circular(20.0),
            ),
            child: StatefulBuilder(
              builder: (context, setState) => Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 1, 0, 1),
                    child: const Divider(
                      height: 0,
                      thickness: 3,
                      color: Colors.blue,
                    ),
                  ),
                  Column(
                    children: tripList
                        .map(
                          (data) => RadioListTile(
                            title: Text(
                              data.name,
                              style: const TextStyle(fontSize: 12),
                            ),
                            groupValue: id,
                            value: data.index,
                            onChanged: (val) {
                              ref.read(tripselection.notifier).state =
                                  data.name;
                              setState(() {
                                strradio = data.name;
                                radioItem = data.name;
                                id = data.index;
                                //_selectedRadioIndex = val;
                                isDropdownOpen = !isDropdownOpen;
                                Future.delayed(
                                    const Duration(milliseconds: 400), () {
                                  floatingDropdown.remove();
                                });
                              });
                            },
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Trip DropDown Dynamic List
class TripCustomList {
  late String name;
  late int index;
  TripCustomList({required this.name, required this.index});
}
