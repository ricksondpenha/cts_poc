import 'package:flutter/material.dart';
import 'search_type_bar.dart';
import 'search_type_dropdown.dart';
import '../../../../../widgets/responsive.dart';

class SearchTypeSelector extends StatelessWidget {
  const SearchTypeSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: SearchTypeBar(),
      tablet: SearchTypeBar(),
      desktop: SearchTypeDropdown(),
    );
  }
}
