import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../controller/cardrop_location/drop_off_location_controller.dart';
import '../../../../controller/cardrop_location/drop_off_location_provider.dart';
import '../../../../module.dart';
import '../../../../model/LocationDropOff/location_drop_off.dart';

class DropOffLocation extends ConsumerWidget {
  DropOffLocation(
      {Key? key,
      required this.title,
      required this.desc,
      required this.labelkey})
      : super(key: key);
  String title, desc;
  String labelkey;
  late DropofLocaton selected;
  late List<DropofLocaton> _filtedList;

  @override
  Widget build(BuildContext context, ref) {
    final locationProvider = ref.watch(getDropOffController);
    final select = ref.watch(searchTypeProvider);
    if (select == SearchType.vr) {
      title = 'Destination';
    } else if (select == SearchType.hotels) {
      title = 'CITY / HOTEL / AREA / BUILDING';
    } else if (select == SearchType.car) {
      title = 'Drop-off Location';
      desc = 'Location';
    } else {
      title = 'From';
    }
    if (select != SearchType.car) {
      return const SizedBox(
        height: 0,
        width: 0,
      );
    } else {
      return SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
              child: VerticalDivider(),
            ),
            Container(
              width: 200,
              //color: Colors.black54,
              margin: const EdgeInsets.fromLTRB(0, 2, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                    child: Text(
                      title,
                      style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  LayoutBuilder(
                    builder: (context, constraints) => SizedBox(
                      height: 23,
                      width: MediaQuery.of(context).size.width,
                      child: Autocomplete<DropofLocaton>(
                        optionsBuilder: (textEditingValue) {
                          /*if (textEditingValue.text.isEmpty) {
                    return const Iterable<Country>.empty();
                    }*/
                          List<DropofLocaton> locations =
                              locationProvider.value!.dropofLocaton!;
                          _filtedList = locationProvider.value!.dropofLocaton!;
                          if (textEditingValue.text.isEmpty) {
                            return locations;
                          } else {
                            _filtedList = locations.where((location) {
                              if (location.dropLocation!.toLowerCase().contains(
                                      textEditingValue.text.toLowerCase()) ||
                                  location.dropLocation!.toLowerCase().contains(
                                      textEditingValue.text.toLowerCase()) ||
                                  location.dropLocation!.toLowerCase().contains(
                                      textEditingValue.text.toLowerCase())) {
                                return true;
                              }
                              return false;
                            }).toList();
                            return _filtedList;
                          }
                        },
                        displayStringForOption: (option) =>
                            option.dropLocation!,
                        fieldViewBuilder: (context, fieldTextEditingController,
                            fieldFocusNode, onFieldSubmitted) {
                          return TextField(
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.fromLTRB(10, 2, 0, 0),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              hintText: desc,
                            ),
                            controller: fieldTextEditingController,
                            focusNode: fieldFocusNode,
                            style: const TextStyle(
                              color: Colors.black54,
                              fontSize: 13,
                            ),
                          );
                        },
                        onSelected: (selection) {
                          selected = selection;

                          /*  ref.watch(locationFromSelection).state =
                              selected.dropLocation.toString();*/

                          ref.watch(cardropoffselection.notifier).state =
                              selected.dropLocation.toString();
                        },
                        optionsViewBuilder: (context, onSelected, options) {
                          return Align(
                            alignment: Alignment.topLeft,
                            child: Material(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 1, 0),
                                height: 45.0 * options.length,
                                // recommanded 50 to be
                                width: 350,
                                color: Colors.white,
                                child: locationProvider.maybeWhen(
                                  orElse: () => const Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                  data: (location) => ListView.builder(
                                    itemCount: _filtedList.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      final option = _filtedList[index];

                                      return ListTile(
                                        contentPadding:
                                            const EdgeInsets.fromLTRB(
                                                10, 0, 0, 0),
                                        title: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  option.dropLocation!,
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        onTap: () {
                                          onSelected(option);
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
}
