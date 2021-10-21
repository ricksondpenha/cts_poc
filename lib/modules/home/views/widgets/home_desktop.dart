import 'package:flutter/material.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool _isBluetoothOn = false;
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
              padding: const EdgeInsets.all(5),
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
            )
          ],
        ),
      ),
    );
  }
}
/*
 const Image(
        image: AssetImage('assets/img/backgroundimage.png'),
        alignment: Alignment.center,
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.fill,
      )
*/

/*
IconButton(
                    icon: const Icon(Icons.flight),
                    iconSize: 24,
                    color: Colors.pink,
                    tooltip: "Flight",
                    onPressed: () {
                      print("Roshan");
                    },
                  )
*/
