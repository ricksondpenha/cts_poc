import 'package:cts_poc/modules/home/views/widgets/home_desktop.dart';
import 'package:cts_poc/modules/home/views/widgets/home_mobile.dart';
import 'package:cts_poc/modules/home/views/widgets/home_tablet.dart';
import 'package:flutter/material.dart';
import '../../../widgets/responsive.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: HomeMobile(),
      tablet: HomeTablet(),
      desktop: HomeDesktop(),
    );
  }
}
