import 'package:cts_poc/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../home/views/widgets/bottom_navbar.dart';
import 'widgets/search_item.dart';
import 'widgets/searchbar_desktop.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: BottomNavbar(
        margin: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 32,
        ),
        items: [
          SearchItem(
            label: 'flight',
            icon: Icons.flight,
            selected: _currentIndex == 0 ? true : false,
            onSelected: () => setState(() => _currentIndex = 0),
          ),
          SearchItem(
            label: 'hotel',
            icon: Icons.villa,
            selected: _currentIndex == 1 ? true : false,
            onSelected: () => setState(() => _currentIndex = 1),
          ),
          SearchItem(
            label: 'vr',
            icon: Icons.apartment,
            selected: _currentIndex == 2 ? true : false,
            onSelected: () => setState(() => _currentIndex = 2),
          ),
          SearchItem(
            label: 'nha',
            icon: Icons.home_work,
            selected: _currentIndex == 3 ? true : false,
            onSelected: () => setState(() => _currentIndex = 3),
          ),
          SearchItem(
            label: 'car',
            icon: Icons.local_taxi,
            selected: _currentIndex == 4 ? true : false,
            onSelected: () => setState(() => _currentIndex = 4),
          ),
          SearchItem(
            label: 'activities',
            icon: Icons.hiking,
            selected: _currentIndex == 5 ? true : false,
            onSelected: () => setState(() => _currentIndex = 5),
          ),
        ],
      ),
      tablet: BottomNavbar(
        margin: const EdgeInsets.symmetric(
          vertical: 60,
          horizontal: 32,
        ),
        items: [
          SearchItem(
            label: 'flight',
            icon: Icons.flight,
            selected: _currentIndex == 0 ? true : false,
            onSelected: () => setState(() => _currentIndex = 0),
          ),
          SearchItem(
            label: 'hotel',
            icon: Icons.villa,
            selected: _currentIndex == 1 ? true : false,
            onSelected: () => setState(() => _currentIndex = 1),
          ),
          SearchItem(
            label: 'vr',
            icon: Icons.apartment,
            selected: _currentIndex == 2 ? true : false,
            onSelected: () => setState(() => _currentIndex = 2),
          ),
          SearchItem(
            label: 'nha',
            icon: Icons.home_work,
            selected: _currentIndex == 3 ? true : false,
            onSelected: () => setState(() => _currentIndex = 3),
          ),
          SearchItem(
            label: 'car',
            icon: Icons.local_taxi,
            selected: _currentIndex == 4 ? true : false,
            onSelected: () => setState(() => _currentIndex = 4),
          ),
          SearchItem(
            label: 'activities',
            icon: Icons.hiking,
            selected: _currentIndex == 5 ? true : false,
            onSelected: () => setState(() => _currentIndex = 5),
          ),
          const Spacer(),
          /* const Icon(
            Icons.arrow_drop_down,
            size: 40,
            color: Colors.white,
          )*/
        ],
      ),
      desktop: SearchbarDesktop(
        searchBarColor: GoRouter.of(context).location != '/' ? true : false,
      ),
    );
  }
}
