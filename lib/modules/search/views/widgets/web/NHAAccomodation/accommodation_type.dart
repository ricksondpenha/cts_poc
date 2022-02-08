import 'package:cts_poc/core.dart';
import '../../../../controller/NHA/accomadation.dart';
import '../../../../controller/searchprovider.dart';

class AccommodationType extends ConsumerWidget {
  AccommodationType({Key? key, required this.labelKey, required this.title})
      : super(key: key);
  final String labelKey;
  final String title;
  int id = 0;
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
    /* radioItem = ref.watch(tripselection).state;
*/
    actionKey = LabeledGlobalKey(labelKey);
    /*  tripCustomList = trip_list[id];
  */
    final select = ref.watch(searchTypeProvider);

    if (select == SearchType.nha) {
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
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      ref.read(nhaSelection.notifier).state,
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

  OverlayEntry _createFloatingDropdown(ref) {
    return OverlayEntry(
      builder: (context) => Positioned(
        left: xPosition,
        top: yPosition + height,
        width: 410,
        child: Material(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          elevation: 10.0,
          child: Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 15, 0),
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
                    children: [
                      SizedBox(
                        height: 350,
                        width: MediaQuery.of(context).size.width,
                        child: GridView.builder(
                            itemCount: choices.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    crossAxisSpacing: 0.0,
                                    mainAxisSpacing: 0.0),
                            itemBuilder: (BuildContext context, int index) {
                              return InkWell(
                                child: Center(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Expanded(
                                            child: Icon(choices[index].icon,
                                                size: 30.0,
                                                color: Colors.black54)),
                                        Text(
                                          choices[index].title,
                                          style: const TextStyle(
                                              color: Colors.black54),
                                        ),
                                      ]),
                                ),
                                onTap: () {
                                  ref.watch(nhaSelection.state).state =
                                      choices[index].title;
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
                              );
                            }),
                      ),
                    ],
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

class Choice {
  const Choice({required this.title, required this.icon});
  final String title;
  final IconData icon;
}

const List<Choice> choices = <Choice>[
  Choice(title: 'Cabin', icon: Icons.home),
  Choice(title: 'Condo', icon: Icons.contacts),
  Choice(title: 'Chalet', icon: Icons.phone),
  Choice(title: 'Vacation Home', icon: Icons.phone),
  Choice(title: 'Apartment', icon: Icons.camera_alt),
  Choice(title: 'Cottage', icon: Icons.settings),
  Choice(title: 'Cabin', icon: Icons.photo_album),
  Choice(title: 'Villa', icon: Icons.wifi),
  Choice(title: 'Houseboat', icon: Icons.wifi),
  Choice(title: 'Campsite', icon: Icons.wifi),
  Choice(title: 'Resort', icon: Icons.wifi),
  Choice(title: 'Aparthotel', icon: Icons.wifi),
];
