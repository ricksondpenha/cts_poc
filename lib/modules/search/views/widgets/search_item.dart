import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'mobile/flight_trip.dart';
import 'mobile/mobile_accomation.dart';
import 'mobile/mobile_cardrop_end.dart';
import 'mobile/mobile_cardrop_start.dart';
import 'mobile/mobile_end_date.dart';
import 'mobile/mobile_location_end.dart';
import 'mobile/mobile_location_start.dart';
import 'mobile/mobile_region.dart';
import 'mobile/mobile_start_date.dart';
import 'mobile/mobile_traveller_passenger.dart';
import 'mobile/search_service.dart';

class SearchItem extends StatefulWidget {
  final IconData icon;
  final String label;
  final bool selected;
  final VoidCallback onSelected;
  const SearchItem({
    Key? key,
    required this.icon,
    required this.label,
    required this.selected,
    required this.onSelected,
  }) : super(key: key);

  @override
  State<SearchItem> createState() => _SearchItemState();
}

class _SearchItemState extends State<SearchItem> {
  @override
  Widget build(BuildContext context) {
    String strSearchTitle = '';

    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) => Padding(
        padding: const EdgeInsets.only(right: 1.0),
        child: CircleAvatar(
          backgroundColor: widget.selected ? Colors.white : Colors.white30,
          child: InkWell(
            onTap: () {
              widget.onSelected();
              debugPrint('I Click At ${widget.label}');
              if (widget.label.toString() == 'flight') {
                strSearchTitle = 'Search Flight';
              } else if (widget.label.toString() == 'hotel') {
                strSearchTitle = 'Search Hotel';
              } else if (widget.label.toString() == 'vr') {
                strSearchTitle = 'Search Properties';
              } else if (widget.label.toString() == 'nha') {
                strSearchTitle = 'Search Accommodations';
              } else if (widget.label.toString() == 'car') {
                strSearchTitle = 'Search Cars';
              } else if (widget.label.toString() == 'activities') {
                strSearchTitle = 'Search Activities';
              }

              seviceSelection(widget.label, strSearchTitle);
            },
            child: Icon(
              widget.icon,
              color: widget.selected ? Colors.orange : Colors.white60,
            ),
          ),
        ),
      ),
    );
  }

  void seviceSelection(String label, String strSearchTitle) {
    //print(' I Am From ${label.toString()} Service Mobile');
    showDialog(
      barrierColor: Colors.white12,
      context: context,
      builder: (BuildContext context) => AlertDialog(
        backgroundColor: Colors.transparent,
        /*  title: Text('AlertDialog Title'),
        content: Text('AlertDialog description'),*/
        actions: <Widget>[
          MobileCarDropStart(labelKey: label.toString()),
          MobileAccomation(labelKey: label.toString()),
          FlightTrip(labelkey: label.toString()),
          const SizedBox(
            height: 3,
          ),
          MobileRegion(labelKey: label.toString()),
          const SizedBox(
            height: 4,
          ),
          MobileLocationStart(
            labelkey: label.toString(),
          ),
          const SizedBox(
            height: 4,
          ),
          MobileLocationEnd(
            labelKey: label.toString(),
          ),
          const SizedBox(
            height: 4,
          ),
          MobileStartDate(
            labelKey: label.toString(),
          ),
          const SizedBox(
            height: 4,
          ),
          MobileCardDropEnd(
            labelKey: label.toString(),
          ),
          const SizedBox(
            height: 4,
          ),
          MobileEndDate(
            labelKey: label.toString(),
          ),
          const SizedBox(
            height: 4,
          ),
          MobileTravellerPassenger(
            labelKey: label.toString(),
          ),
          const SizedBox(
            height: 4,
          ),
          SearchService(strSearchTitle: strSearchTitle),

          /* Padding(
            padding: const EdgeInsets.all(5.0),
            child: SizedBox(
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                child: Wrap(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      color: Colors.orangeAccent,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      color: Colors.blueGrey,
                    ),
                  ],
                ),
              ),
            ),
          ),*/

          /*  TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),*/
        ],
      ),
    );
  }
}
