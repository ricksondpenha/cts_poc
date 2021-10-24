import 'package:flutter/material.dart';
import 'search_field.dart';

class SearchbarDesktop extends StatelessWidget {
  const SearchbarDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 60, horizontal: 32),
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      elevation: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 2,
              horizontal: 2,
            ),
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(20),
            ),
            child: InkWell(
              onTap: () {},
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.flight,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SearchField(title: 'TRIP', desc: 'Round Trip'),
          const SearchField(title: 'FROM', desc: 'Add Location'),
          const SearchField(title: 'TO', desc: 'Add Location'),
          const SearchField(title: 'DEPARTURE', desc: 'Add Date'),
          const SearchField(title: 'RETURN', desc: 'Add Date'),
          const SearchField(
              title: 'TRAVELLERS & CLASS', desc: 'Add Travellers'),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: InkWell(
              onTap: () {},
              child: const CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
