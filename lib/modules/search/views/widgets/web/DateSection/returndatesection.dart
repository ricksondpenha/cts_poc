import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../module.dart';
import '../../../../controller/DateSection/returndateprovider.dart';
import '../../../../controller/searchprovider.dart';

class ReturnDateSection extends ConsumerWidget {
  ReturnDateSection({Key? key, required this.labelKey}) : super(key: key);
  final String labelKey;
  late String title;
  DateTime currentDate = DateTime.now();

  static bool isDropdownOpen = false;
  late GlobalKey actionKey;
  late double width, height, xPosition, yPosition;
  static late OverlayEntry floatingDropdown;
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
    if (select == SearchType.vr || select == SearchType.activities) {
      title = 'To';
    } else if (select == SearchType.hotels || select == SearchType.nha) {
      title = 'Check Out';
    } else if (select == SearchType.car) {
      title = 'Drop-off date & Time';
    } else {
      title = 'Return Date';
    }

    return Row(
      children: [
        const SizedBox(
          height: 38,
          child: VerticalDivider(),
        ),
        InkWell(
          key: actionKey,
          onTap: () {
            CloseDropdownControlers.closeAllDropdown();
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
            width: 200,
            height: 30,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
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
                      padding: const EdgeInsets.fromLTRB(10, 2, 0, 0),
                      child: Text(
                        ref.watch(returndateToSelection.state).state.toString(),
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
