import 'package:flutter/material.dart';

class LocationButton extends StatelessWidget {
  const LocationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: const CircleAvatar(
        backgroundColor: Colors.black12,
        child: Icon(
          Icons.location_on,
          color: Colors.brown,
        ),
      ),
    );
  }
}
