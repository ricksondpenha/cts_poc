import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MobileCarDropStart extends ConsumerWidget {
  final String labelKey;
  const MobileCarDropStart({Key? key, required this.labelKey})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String title = '';
    if (labelKey.toString() == 'flight') {
      title = 'From';
    } else if (labelKey.toString() == 'hotel' || labelKey.toString() == 'nha') {
      title = 'CITY / HOTEL / AREA / BUILDING';
    } else if (labelKey.toString() == 'vr') {
      title = 'DESTINATION';
    } else if (labelKey.toString() == 'car') {
      title = 'Drop Off';
    } else if (labelKey.toString() == 'activities') {
      title = 'DESTINATION';
    }
    if (labelKey.toString() == 'car') {
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
                                        text: 'Location',
                                        style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                ),
                              ),
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
      return const SizedBox();
    }
  }
}
