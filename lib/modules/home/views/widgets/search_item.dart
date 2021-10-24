import 'package:flutter/material.dart';

class SearchItem extends StatefulWidget {
  final IconData icon;
  final String label;
  final bool selected;
  final VoidCallback onSelected;
  const SearchItem({
    Key? key,
    required this.icon,
    required this.label,
    required this.selected,
    required this.onSelected,
  }) : super(key: key);

  @override
  State<SearchItem> createState() => _SearchItemState();
}

class _SearchItemState extends State<SearchItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: CircleAvatar(
        backgroundColor: widget.selected ? Colors.white : Colors.white30,
        child: InkWell(
          onTap: () => widget.onSelected(),
          child: Icon(
            widget.icon,
            color: widget.selected ? Colors.orange : Colors.white60,
          ),
        ),
      ),
    );
  }
}
