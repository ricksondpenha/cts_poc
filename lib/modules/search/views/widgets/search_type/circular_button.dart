import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final bool selected;
  final IconData icon;
  final String label;
  final Function()? onTap;
  const CircularButton({
    Key? key,
    required this.selected,
    required this.icon,
    required this.label,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: label,
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: selected ? Colors.blue : Colors.white54,
          ),
          child: Icon(
            icon,
            color: selected ? Colors.white : Colors.grey,
          ),
        ),
      ),
    );
  }
}
