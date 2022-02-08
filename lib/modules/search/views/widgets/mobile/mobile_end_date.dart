import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../controller/DateSection/returndateprovider.dart';

class MobileEndDate extends ConsumerWidget {
  final String labelKey;

  const MobileEndDate({Key? key, required this.labelKey}) : super(key: key);

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

        ref.read(returndateToSelection.notifier).state = currentDate;
      }
    }

    late String title;
    if (labelKey.toString() == 'flight') {
      title = 'Return';
    }
    if (labelKey.toString() == 'hotel' || labelKey.toString() == 'nha') {
      title = 'CHECK OUT';
    }
    if (labelKey.toString() == 'vr' || labelKey.toString() == 'activities') {
      title = 'TO';
    }
    if (labelKey.toString() == 'car') {
      title = 'Drop-off date & Time';
    }
    return Wrap(
      direction: Axis.horizontal,
      runSpacing: 10,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          child: InkWell(
            onTap: () {
              // Mobile Location Logical Here
              _selectDate(context, ref);
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
                                          .watch(returndateToSelection.state)
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
