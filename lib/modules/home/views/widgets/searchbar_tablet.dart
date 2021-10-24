import 'package:flutter/material.dart';
import 'search_item.dart';

class SearchbarTablet extends StatelessWidget {
  const SearchbarTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 60, horizontal: 32),
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 10,
      child: Row(
        children: [
          SearchItem(
            label: 'Flights',
            icon: Icons.flight,
            selected: true,
            onSelected: () {},
          ),
        ],
      ),
    );
  }
}
