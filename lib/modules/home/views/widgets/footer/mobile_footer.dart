import 'package:flutter/material.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF313741),
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
            alignment: Alignment.centerLeft,
            child: const Text(
              "Insider Travel Club, PO Box 846, Traveler's",
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
            alignment: Alignment.centerLeft,
            child: const Text(
              "Rest, SC 29690 USA",
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 15, 0, 0),
            alignment: Alignment.centerLeft,
            child: const Text(
              "services@insidertravel.com",
              style: TextStyle(color: Colors.blue, fontSize: 13),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 15, 0, 0),
            alignment: Alignment.centerLeft,
            child: const Text(
              "1-864-444-2356.",
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
          ),
          const SizedBox(
            width: 10.0,
            height: 10.0,
          ),
          const Divider(
            height: 20,
            thickness: 1,
            indent: 20,
            endIndent: 20,
            color: Colors.white,
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
            alignment: Alignment.centerLeft,
            child: const Text(
              "Follow us on",
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
            alignment: Alignment.centerLeft,
            child: Row(
              children: <Widget>[
                Container(
                  child: IconButton(
                    icon: const Icon(Icons.verified_user),
                    iconSize: 24,
                    color: Colors.orange,
                    tooltip: "Flight",
                    onPressed: () {
                      print("Roshan");
                    },
                  ),
                ),
                Container(
                  child: IconButton(
                    icon: const Icon(Icons.verified_user),
                    iconSize: 24,
                    color: Colors.orange,
                    tooltip: "Flight",
                    onPressed: () {
                      print("Roshan");
                    },
                  ),
                ),
                // ignore: avoid_unnecessary_containers
                Container(
                  child: IconButton(
                    icon: const Icon(Icons.verified_user),
                    iconSize: 24,
                    color: Colors.orange,
                    tooltip: "Flight",
                    onPressed: () {
                      print("Roshan");
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 15, 0, 20),
            alignment: Alignment.centerLeft,
            child: const Text(
              "© 2021 insider Travel Club",
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
          )
        ],
      ),
    );
  }
}
