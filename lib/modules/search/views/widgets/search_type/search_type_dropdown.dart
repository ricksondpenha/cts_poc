import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'circular_button.dart';
import '../../../controller/search_type_provider.dart';
import '../../../model/models.dart';

class SearchTypeDropdown extends StatefulWidget {
  const SearchTypeDropdown({Key? key}) : super(key: key);

  @override
  _SearchTypeDropdownState createState() => _SearchTypeDropdownState();
}

class _SearchTypeDropdownState extends State<SearchTypeDropdown> {
  final FocusNode _focusNode = FocusNode();
  late OverlayEntry _overlayEntry;

  @override
  void initState() {
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        _overlayEntry = _dropdown();
        Overlay.of(context)!.insert(_overlayEntry);
      } else {
        _overlayEntry.remove();
      }
    });
    super.initState();
  }

  OverlayEntry _dropdown() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    final offset = renderBox.localToGlobal(Offset.zero);
    return OverlayEntry(
        builder: (context) => Positioned(
              left: offset.dx - 6,
              top: offset.dy - 4,
              width: 60,
              child: Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: Consumer(builder: (context, ref, _) {
                  final searchType = ref.watch(searchTypeProvider);
                  return ListView.separated(
                    padding: const EdgeInsets.all(4),
                    shrinkWrap: true,
                    itemCount: SearchType.values.length,
                    itemBuilder: (context, index) => CircularButton(
                        selected: searchType == SearchType.values[index],
                        icon: searchTypeIcons.values.elementAt(index),
                        label: SearchType.values[index].name,
                        onTap: () {
                          ref
                              .read(searchTypeProvider.notifier)
                              .update((value) => SearchType.values[index]);
                          _focusNode.unfocus();
                        }),
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 8),
                  );
                }),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: _focusNode,
      child: InkWell(
        onTap: () {
          if (!_focusNode.hasFocus) {
            FocusScope.of(context).requestFocus(_focusNode);
          } else {
            _focusNode.unfocus();
          }
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(100.0),
          ),
          child: Consumer(builder: (context, ref, child) {
            final searchType = ref.watch(searchTypeProvider);
            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CircularButton(
                    icon: searchTypeIcons.entries
                        .firstWhere((type) => type.key == searchType)
                        .value,
                    label: searchType.name,
                    selected: true,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.black,
                    size: 32,
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
