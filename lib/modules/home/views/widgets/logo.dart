import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.navigation,
          color: Colors.orange,
          size: 30,
        ),
        Column(
          children: const [
            Text(
              'INSIDER',
              style: TextStyle(
                fontSize: 10,
                color: Colors.orange,
              ),
            ),
            Text(
              'TRAVEL CLUB',
              style: TextStyle(
                fontSize: 5,
                color: Colors.orange,
              ),
            ),
          ],
        )
      ],
    );
  }
}
