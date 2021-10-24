import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  final EdgeInsets margin;
  final List<Widget> items;
  const BottomNavbar({
    Key? key,
    required this.margin,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: margin,
      color: Colors.orange,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: items,
      ),
    );
  }
}
