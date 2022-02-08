import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../module.dart';
import '../../../../controller/location/location_controller.dart';
import '../../../../controller/location/locationfromprovider.dart';
import '../../../../model/location1/locations_model.dart';

class LocationFrom extends ConsumerStatefulWidget {
  LocationFrom({Key? key, required this.title, required this.desc})
      : super(key: key);
  String title, desc;

  @override
  ConsumerState<LocationFrom> createState() => _LocationFromState();
}

class _LocationFromState extends ConsumerState<LocationFrom> {
  late Locations selected;

  late List<Locations> _filtedList;
  late String title;
  @override
  void initState() {
    ref.read(locationsProvider);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final locationProvider = ref.watch(getLocatoionProvider);
    final select = ref.watch(searchTypeProvider);
    if (select == SearchType.vr) {
      title = 'Destination';
    } else if (select == SearchType.hotels || select == SearchType.nha) {
      title = 'CITY / HOTEL / AREA / BUILDING';
    } else if (select == SearchType.car) {
      title = 'Pick up Location';
    } else {
      title = 'From';
    }
    if (select == SearchType.activities) {
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
                      widget.title,
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
                                  const EdgeInsets.fromLTRB(10, 2, 0, 0),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              hintText: widget.desc,
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

                          ref.watch(locationFromSelection.notifier).state =
                              selected.airportName.toString();

                          ref.watch(airportCode.notifier).state =
                              selected.countryCode.toString();
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
