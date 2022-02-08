import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../controller/tripsection/trip_provider.dart';
import '../web/trip/trip_custom_design.dart';

class FlightTrip extends ConsumerWidget {
  final String labelkey;
  const FlightTrip({Key? key, required this.labelkey}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('Debug Mode ${labelkey.toString()}');
    if (labelkey.toString() == 'flight') {
      return Wrap(
        runSpacing: 10,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              // ignore: use_full_hex_values_for_flutter_colors
              color: const Color(0xffbc99948),
              child: TripSelection(labelkey.toString()),
            ),
          ),
          /*const SizedBox(
          height: 5,
        ),
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 40,
            color: Color(0xffbC99948),
          ),
        ),*/
        ],
      );
    }
    return Container(
      height: 10,
    );
  }
}

class TripSelection extends ConsumerWidget {
  const TripSelection(String string, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String radioItem = 'One Way';
    radioItem = ref.watch(tripselection);
    return Wrap(
      children: [
        InkWell(
          onTap: () {
            // Mobile Logincal Prompt Here
          },
          child: GestureDetector(
            onTap: () {
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
                              width: MediaQuery.of(context).size.width,
                              // ignore: use_full_hex_values_for_flutter_colors
                              color: const Color(0xffbc99948),
                              child: TripCustomDesign(
                                labelKey: 'tripKey',
                              ),
                            ),
                            /* Container(
                              width: MediaQuery.of(context).size.width,
                              height: 40,
                              color: Colors.blueGrey,
                            ),*/
                          ],
                        ),
                      ),
                    ),
                    /*   TextButton(
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
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: Wrap(
                direction: Axis.vertical,
                children: [
                  const Text(
                    'Trip',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Wrap(
                    direction: Axis.horizontal,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: radioItem.toString(),
                                style: const TextStyle(
                                  color: Colors.white70,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                )),
                            /*TextSpan(
                                text: '\u{25BC}',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                )),*/
                          ],
                        ),
                      ),
                      /*  IconButton(
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
            ),
          ),
        ),
      ],
    );
  }
}
