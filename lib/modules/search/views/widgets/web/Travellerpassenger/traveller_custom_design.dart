import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../module.dart';
import '../../../../controller/passengerSection/passengerprovider.dart';
import '../../../../controller/searchprovider.dart';

void main() {
  runApp(ProviderScope(
      child: TravellerCustomDesign(
    labelKey: 'Travelling',
  )));
}

class TravellerCustomDesign extends ConsumerWidget {
  TravellerCustomDesign({Key? key, required this.labelKey}) : super(key: key);
  String labelKey;
  static bool isDropdownOpen = false; //changes
  late GlobalKey actionKey;
  late double width, height, xPosition, yPosition;
  static late OverlayEntry floatingDropdown; //changes

  //changes
  static void closeDropdown() {
    if (isDropdownOpen) {
      isDropdownOpen = !isDropdownOpen;
      floatingDropdown.remove();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    actionKey = LabeledGlobalKey(labelKey);
    final select = ref.watch(searchTypeProvider);
    //print(select);
    if (select == SearchType.flights) {
      return Row(
        children: [
          const SizedBox(
            height: 38,
            child: VerticalDivider(),
          ),
          InkWell(
            key: actionKey,
            onTap: () {
              // Changaes
              CloseDropdownControlers.closeAllDropdown();
              if (isDropdownOpen) {
                floatingDropdown.remove();
              } else {
                findDropdownData();
                floatingDropdown = _createFloatingDropdown();
                Overlay.of(context)!.insert(floatingDropdown);
              }
              isDropdownOpen = !isDropdownOpen;
            },
            child: SizedBox(
              width: 120,
              height: 30,
              child: Column(
                children: const [
                  Text(
                    ' Travellers & Class',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                    'Add Travelers',
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                ],
              ),
            ),
          ),
        ],
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

  OverlayEntry _createFloatingDropdown() {
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
            padding: const EdgeInsets.all(2.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              //borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 8, 0, 0),
                  child: Text(
                    'PASSENGERS',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                AdultPassengerCount(),
                ChildrenPassengerCount(),
                InfantsPassengerCount(),
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 8, 0, 0),
                  child: Text(
                    'CLASS',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                PassengerClassModeSelection(),

                // PremiumEconomy(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PassengerClassModeSelection extends StatefulWidget {
  const PassengerClassModeSelection({Key? key}) : super(key: key);

  @override
  _PassengerClassModeSelectionState createState() =>
      _PassengerClassModeSelectionState();
}

class _PassengerClassModeSelectionState
    extends State<PassengerClassModeSelection> {
  bool _economyPremium = false;
  bool _premium = false;

  bool _business = false;

  String strPremiumEconomy = 'Economy/Premium Economy';
  String strPremium = 'Premium Economy';
  String strBussiness = 'Bussiness';

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, watch) => Column(
        children: [
          SizedBox(
            height: 30,
            child: CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              contentPadding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              title: const Text(
                'Economy/Premium Economy',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
              value: _economyPremium,
              onChanged: (value) {
                setState(() {
                  _economyPremium = !_economyPremium;
                  ref.watch(passengerEconomyPremiumClass.notifier).state =
                      strPremiumEconomy;
                  CloseDropdownControlers.closeAllDropdown();
                });
              },
            ),
          ),
          SizedBox(
            height: 30,
            child: CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              contentPadding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              title: const Text(
                'Premium Economy',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
              value: _premium,
              onChanged: (value) {
                setState(() {
                  _premium = !_premium;
                  ref.watch(passengerEconomyClass.notifier).state = strPremium;
                  CloseDropdownControlers.closeAllDropdown();
                });
              },
            ),
          ),
          SizedBox(
            child: CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              contentPadding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              title: const Text(
                'Bussiness',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
              value: _business,
              onChanged: (value) {
                setState(() {
                  _business = !_business;
                  ref.watch(bussinessClass.notifier).state = strBussiness;
                  CloseDropdownControlers.closeAllDropdown();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

// All Pasenger Count
class InfantsPassengerCount extends StatefulWidget {
  const InfantsPassengerCount({Key? key}) : super(key: key);

  @override
  _InfantsPassengerCountState createState() => _InfantsPassengerCountState();
}

class _InfantsPassengerCountState extends State<InfantsPassengerCount> {
  int _n = 1;
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, wacth) => Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text(
              'Infants ',
              style: TextStyle(fontSize: 12, color: Colors.black54),
            ),
            IconButton(
              icon: const Icon(Icons.remove),
              color: Colors.blue,
              iconSize: 13,
              onPressed: () {
                setState(() {
                  if (_n != 0) _n--;
                  ref.read(infantsPassengerCount.notifier).state = _n;
                });
              },
            ),
            Text('$_n',
                style: const TextStyle(fontSize: 11, color: Colors.black54)),
            IconButton(
              icon: const Icon(Icons.add),
              iconSize: 13,
              color: Colors.blue,
              //tooltip: 'Increase volume by 10',
              onPressed: () {
                setState(() {
                  _n++;
                  ref.read(infantsPassengerCount.notifier).state = _n;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ChildrenPassengerCount extends StatefulWidget {
  const ChildrenPassengerCount({Key? key}) : super(key: key);

  @override
  _ChildrenPassengerCountState createState() => _ChildrenPassengerCountState();
}

class _ChildrenPassengerCountState extends State<ChildrenPassengerCount> {
  int _n = 1;
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, watch) {
        return Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const Text(
                'Children',
                style: TextStyle(fontSize: 12, color: Colors.black54),
              ),
              IconButton(
                icon: const Icon(Icons.remove),
                color: Colors.blue,
                iconSize: 13,
                onPressed: () {
                  setState(() {
                    if (_n != 0) _n--;
                    ref.read(childrenPassengerCount.notifier).state = _n;
                  });
                },
              ),
              Text('$_n',
                  style: const TextStyle(fontSize: 11, color: Colors.black54)),
              IconButton(
                icon: const Icon(Icons.add),
                iconSize: 13,
                color: Colors.blue,
                //tooltip: 'Increase volume by 10',
                onPressed: () {
                  setState(() {
                    if (_n != 0) _n++;
                    ref.read(childrenPassengerCount.notifier).state = _n;
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

class AdultPassengerCount extends StatefulWidget {
  const AdultPassengerCount({Key? key}) : super(key: key);

  @override
  _AdultPassengerCountState createState() => _AdultPassengerCountState();
}

class _AdultPassengerCountState extends State<AdultPassengerCount> {
  int _n = 1;
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, watch) {
        return Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const Text(
                'Adult   ',
                style: TextStyle(fontSize: 12, color: Colors.black54),
              ),
              IconButton(
                icon: const Icon(Icons.remove),
                color: Colors.blue,
                iconSize: 13,
                onPressed: () {
                  // minus();
                  setState(() {
                    if (_n > 1) _n--;
                    ref.read(adultPassengerCount.notifier).state = _n;
                  });
                },
              ),
              Text('$_n',
                  style: const TextStyle(fontSize: 11, color: Colors.black54)),
              IconButton(
                icon: const Icon(Icons.add),
                iconSize: 13,
                color: Colors.blue,
                //tooltip: 'Increase volume by 10',
                onPressed: () {
                  //add();
                  setState(() {
                    _n++;
                    ref.read(adultPassengerCount.notifier).state = _n;
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
