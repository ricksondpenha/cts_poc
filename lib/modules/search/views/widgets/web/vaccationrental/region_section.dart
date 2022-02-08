import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../module.dart';
import '../../../../controller/searchprovider.dart';
import '../../../../controller/vacctionrental/region_controller.dart';
import '../../../../controller/vacctionrental/region_provider.dart';
import '../../../../model/vacctionrental/region_model.dart';

class RegionSection extends ConsumerWidget {
  RegionSection({Key? key, required this.labelKey}) : super(key: key);
  String labelKey;
  static bool isDropdownOpen = false;
  late GlobalKey actionKey;
  late double width, height, xPosition, yPosition;
  static late OverlayEntry floatingDropdown;

  static void closeDropdown() {
    if (isDropdownOpen) {
      isDropdownOpen = !isDropdownOpen;
      floatingDropdown.remove();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final select = ref.watch(searchTypeProvider);
    final regionLabel = ref.watch(regionselection);
    // final AsyncValue<RegionModel> region = ref.watch(getRegionController);
    actionKey = LabeledGlobalKey(labelKey);
    debugPrint(select.name);
    // print(isDropdownOpen);
    if (select == SearchType.vr) {
      return InkWell(
        key: actionKey,
        borderRadius: BorderRadius.circular(0),
        onTap: () {
          CloseDropdownControlers.closeAllDropdown();
          if (isDropdownOpen) {
            floatingDropdown.remove();
          } else {
            findDropdownData();
            floatingDropdown = _createFloatingDropdown(ref);
            Overlay.of(context)!.insert(floatingDropdown);
          }
          isDropdownOpen = !isDropdownOpen;
        },
        child: SizedBox(
          width: 200,
          /*decoration: BoxDecoration(
          color: Colors.black12,
          // borderRadius: BorderRadius.circular(20.0),
        ),*/
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 5, 12, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text(
                  'Region',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      regionLabel,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.black54,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black54,
                      size: 28,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }

    return const SizedBox(
      height: 0,
      width: 0,
    );
  }

  void findDropdownData() {
    RenderBox? renderBox =
        actionKey.currentContext!.findRenderObject() as RenderBox?;
    height = renderBox!.size.height;
    width = renderBox.size.width;
    Offset offset = renderBox.localToGlobal(Offset.zero);
    xPosition = offset.dx;
    yPosition = offset.dy;
  }

  OverlayEntry _createFloatingDropdown(WidgetRef ref) {
    final AsyncValue<RegionModel> region = ref.watch(getRegionController);
    debugPrint('Region List $region');
    // final regionList = region.value;
    return OverlayEntry(
      builder: (context) => Positioned(
        left: xPosition,
        top: yPosition + height,
        width: width,
        child: Material(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          elevation: 10.0,
          child: Container(
            padding: const EdgeInsets.all(2.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              //borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 1, 0, 1),
                  child: const Divider(
                    height: 0,
                    thickness: 3,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  height: 250,
                  child: region.when(
                    loading: () => const CircularProgressIndicator(),
                    error: (error, stack) => Text(error.toString()),
                    data: (regions) => ListView.builder(
                      itemCount: regions.regions!.length,
                      itemBuilder: (context, index) {
                        Regions region = regions.regions![index];
                        return ListTile(
                          title: Text(region.regionName!),
                          onTap: () {
                            debugPrint(region.regionName);
                            ref.read(regionselection.notifier).state =
                                region.regionName!;
                            isDropdownOpen = !isDropdownOpen;

                            floatingDropdown.remove();
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
