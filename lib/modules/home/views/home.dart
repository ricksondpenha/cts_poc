import 'package:cts_poc/widgets/responsive.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Scaffold(),
      tablet: Scaffold(),
      desktop: Scaffold(),
    );
  }
}
