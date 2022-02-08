import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../module.dart';
import '../../../../controller/activity/activities_controller.dart';
import '../../../../controller/activity/activity_provider.dart';
import '../../../../model/activity/activities_model.dart';

class DestinationDropDown extends ConsumerWidget {
  DestinationDropDown({Key? key, required this.labelKey, required this.title})
      : super(key: key);
  String labelKey;
  String title;
  bool isDropdownOpen = false;
  late GlobalKey actionKey;
  late double width, height, xPosition, yPosition;
  late OverlayEntry floatingDropdown;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final select = ref.watch(searchTypeProvider);
    final destinationLabel = ref.watch(activitySelection);
    // final AsyncValue<RegionModel> vacctionrental = ref.watch(getRegionController);
    //final AsyncValue<RegionModel> vacctionrental = ref.watch(getRegionController);
    actionKey = LabeledGlobalKey(labelKey);
    // print(isDropdownOpen);
    if (select == SearchType.activities) {
      return InkWell(
        key: actionKey,
        borderRadius: BorderRadius.circular(0),
        onTap: () {
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
            padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      destinationLabel,
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
    final AsyncValue<ActivityModel> activities =
        ref.watch(getActivityController);
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
                  child: activities.when(
                    loading: () => const CircularProgressIndicator(),
                    error: (
                      error,
                      stack,
                    ) =>
                        Text(error.toString()),
                    data: (activities) => ListView.builder(
                      itemCount: activities.activity!.length,
                      itemBuilder: (context, index) {
                        Activities activity = activities.activity![index];
                        return ListTile(
                          title: Text(activity.destination!),
                          onTap: () {
                            ref.read(activitySelection.notifier).state =
                                activity.destination!;
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
