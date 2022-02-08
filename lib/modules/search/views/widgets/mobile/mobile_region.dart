import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MobileRegion extends ConsumerWidget {
  final String labelKey;
  const MobileRegion({Key? key, required this.labelKey}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late String title;
    if (labelKey.toString() == 'flight') {
      title = 'Departure';
    }
    if (labelKey.toString() == 'hotel') {
      title = 'CHECK IN';
    }
    if (labelKey.toString() == 'vr') {
      title = 'Region';
    }
    if (labelKey.toString() == 'nha') {
      title = 'Accommodation TYpe';
    }
    if (labelKey.toString() == 'activities') {
      title = 'Guest';
    }
    if (labelKey.toString() == 'car') {
      title = 'Guest';
    }
    if (labelKey.toString() == 'vr') {
      return Wrap(
        direction: Axis.horizontal,
        runSpacing: 10,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
            child: InkWell(
              onTap: () {
                // Mobile Location Logical Here
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
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                        text: 'Select Start Date',
                                        style: TextStyle(
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
      return Container(
        height: 0,
      );
    }
  }
}
