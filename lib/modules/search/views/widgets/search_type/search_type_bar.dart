import 'package:flutter/material.dart';
import '../../../model/models.dart';
import 'circular_button.dart';

class SearchTypeBar extends StatefulWidget {
  const SearchTypeBar({Key? key}) : super(key: key);

  @override
  _SearchTypeBarState createState() => _SearchTypeBarState();
}

class _SearchTypeBarState extends State<SearchTypeBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: SearchType.values
          .map(
            (type) => CircularButton(
              selected: false,
              icon: searchTypeIcons[type] ?? Icons.flight,
              label: type.name,
              onTap: () {},
            ),
          )
          .toList(),
    );
  }
}
