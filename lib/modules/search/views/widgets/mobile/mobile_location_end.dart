import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../model/location1/locations_model.dart';

import '../../../controller/location/location_controller.dart';
import '../../../controller/location/locationdestinationprovider.dart';

class MobileLocationEnd extends ConsumerWidget {
  final String labelKey;

  const MobileLocationEnd({Key? key, required this.labelKey}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late String title;
    late Locations selected;
    late List<Locations> _filtedList;
    late String desc = '';
    final locationProvider = ref.watch(getLocatoionProvider);
    if (labelKey.toString() == 'flight') {
      title = 'To';
      desc = 'destination';
    }
    if (labelKey.toString() == 'hotel') {
      title = 'Guest';
    }
    if (labelKey.toString() == 'vr') {
      title = 'Guest';
    }
    if (labelKey.toString() == 'nha') {
      title = 'Guest';
    }
    if (labelKey.toString() == 'activities') {
      title = 'Guest';
    }
    if (labelKey.toString() == 'car') {
      title = 'Guest';
    }

    if (labelKey.toString() == 'flight') {
      return SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
              child: Container(
                width: MediaQuery.of(context).size.width - 100,
                // ignore: use_full_hex_values_for_flutter_colors
                color: const Color(0xffbc99948),
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                      child: Text(
                        title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 23,
                      width: MediaQuery.of(context).size.width,
                      child: Autocomplete<Locations>(
                        optionsBuilder: (textEditingValue) {
                          /*if (textEditingValue.text.isEmpty) {
                      return const Iterable<Country>.empty();
                      }*/
                          List<Locations> locations =
                              locationProvider.value!.locations!;
                          _filtedList = locationProvider.value!.locations!;
                          if (textEditingValue.text.isEmpty) {
                            return locations;
                          } else {
                            _filtedList = locations.where((location) {
                              if (location.countryName!.toLowerCase().contains(
                                      textEditingValue.text.toLowerCase()) ||
                                  location.countryCode!.toLowerCase().contains(
                                      textEditingValue.text.toLowerCase()) ||
                                  location.airportName!.toLowerCase().contains(
                                      textEditingValue.text.toLowerCase())) {
                                return true;
                              }
                              return false;
                            }).toList();
                            return _filtedList;
                          }
                        },
                        displayStringForOption: (option) => option.countryName!,
                        fieldViewBuilder: (context, fieldTextEditingController,
                            fieldFocusNode, onFieldSubmitted) {
                          return TextField(
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.fromLTRB(15, 2, 0, 5),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              hintText: desc,
                              hintStyle: const TextStyle(
                                  fontSize: 13, color: Colors.white),
                            ),
                            controller: fieldTextEditingController,
                            focusNode: fieldFocusNode,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          );
                        },
                        onSelected: (selection) {
                          selected = selection;

                          ref.watch(locationToSelection.notifier).state =
                              selected.airportName.toString();
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
                                                  option.countryName!,
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                const Spacer(),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 0, 9, 0),
                                                  child: Text(
                                                    option.countryCode!,
                                                    style: const TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 10,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              option.airportName.toString(),
                                              style: const TextStyle(
                                                color: Colors.black54,
                                                fontSize: 10,
                                              ),
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
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return Container(
        height: 0,
      );
    }
  }
}
