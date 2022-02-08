import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../module.dart';
import '../../../../controller/DateSection/departuredateprovider.dart';

class DepatureDateSection extends ConsumerWidget {
  DepatureDateSection({Key? key, required this.labelKey, required this.title})
      : super(key: key);
  String labelKey;
  String title;

  DateTime currentDate = DateTime.now();

  bool isDropdownOpen = false;
  late GlobalKey actionKey;
  late double width, height, xPosition, yPosition;
  late OverlayEntry floatingDropdown;

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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final select = ref.watch(searchTypeProvider);
    if (select == SearchType.vr || select == SearchType.activities) {
      title = 'From';
    } else if (select == SearchType.hotels || select == SearchType.nha) {
      title = 'Check In';
    } else if (select == SearchType.car) {
      title = 'Pickup date & Time';
    } else {
      title = 'Depature Date';
    }

    actionKey = LabeledGlobalKey(labelKey);

    return Row(
      children: [
        const SizedBox(
          height: 38,
          child: VerticalDivider(),
        ),
        InkWell(
          key: actionKey,
          onTap: () {
            /*setState(() {
              if (isDropdownOpen) {
                floatingDropdown.remove();
              } else {
                findDropdownData();
                floatingDropdown = _createFloatingDropdown();
                Overlay.of(context)!.insert(floatingDropdown);
              }
              isDropdownOpen = !isDropdownOpen;
            });*/
            _selectDate(context, ref);
          },
          child: SizedBox(
            width: 210,
            height: 30,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                        padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                        child: Text(
                          ref.watch(dateFromSelection.state).state.toString(),
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
