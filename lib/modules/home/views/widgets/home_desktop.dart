import 'package:flutter/material.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //bool _isBluetoothOn = false;
    return Scaffold(
/*      appBar: AppBar(
        title: const Text('Desktop (Web)'),
      ),*/
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/img/backgroundimage.png"),
                fit: BoxFit.cover)),
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(30),
              //padding: const EdgeInsets.fromLTRB(left, top, right, bottom),
              padding: const EdgeInsets.all(10),
              //padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(46),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, -2),
                        blurRadius: 30,
                        color: Colors.black.withOpacity(0.16)),
                  ]),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.flight),
                    iconSize: 24,
                    color: Colors.green,
                    tooltip: "Flight",
                    onPressed: () {
                      print("Roshan");
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.flight),
                    iconSize: 24,
                    color: Colors.blue,
                    tooltip: "Flight",
                    onPressed: () {
                      print("Roshan");
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.flight),
                    iconSize: 24,
                    color: Colors.black,
                    tooltip: "Flight",
                    onPressed: () {
                      print("Roshan");
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.flight),
                    iconSize: 24,
                    color: Colors.orange,
                    tooltip: "Flight",
                    onPressed: () {
                      print("Roshan");
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.flight),
                    iconSize: 24,
                    color: Colors.pink,
                    tooltip: "Flight",
                    onPressed: () {
                      print("Roshan");
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.flight),
                    iconSize: 24,
                    color: Colors.pink,
                    tooltip: "Flight",
                    onPressed: () {
                      print("Roshan");
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.flight),
                    iconSize: 24,
                    color: Colors.pink,
                    tooltip: "Flight",
                    onPressed: () {
                      print("Roshan");
                    },
                  ),
                  Spacer(),
                  IconButton(
                    icon: const Icon(Icons.arrow_drop_down),
                    iconSize: 38,
                    color: Colors.pink,
                    tooltip: "Flight",
                    onPressed: () {
                      print("Roshan");
                    },
                  ),
                ],
              ),
            ),
            Container(
              child: Text("Working on It"),
            ),
          ],
        ),
      ),
    );
  }
}
