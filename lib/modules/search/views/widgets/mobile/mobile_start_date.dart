import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../controller/DateSection/departuredateprovider.dart';

class MobileStartDate extends ConsumerWidget {
  final String labelKey;
  const MobileStartDate({Key? key, required this.labelKey}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    DateTime currentDate = DateTime.now();
    Future<void> _selectDate(BuildContext context, WidgetRef ref) async {
      final DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: currentDate,
          firstDate: DateTime(2015),
          lastDate: DateTime(2050));
      if (pickedDate != null && pickedDate != currentDate) {
        currentDate = pickedDate;

        ref.read(dateFromSelection.notifier).state = currentDate;
      }
    }

    late String title;
    if (labelKey.toString() == 'flight') {
      title = 'Departure';
    }
    if (labelKey.toString() == 'hotel' || labelKey.toString() == 'nha') {
      title = 'CHECK IN';
    }
    if (labelKey.toString() == 'vr' || labelKey.toString() == 'activities') {
      title = 'FROM';
    }
    if (labelKey.toString() == 'car') {
      title = 'Pickup date & Time';
    }
    return Wrap(
      direction: Axis.horizontal,
      runSpacing: 10,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          child: InkWell(
            onTap: () {
              _selectDate(context, ref);

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
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: ref
                                          .watch(dateFromSelection.state)
                                          .state
                                          .toString(),
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
  }
}
