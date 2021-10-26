import 'package:cts_poc/widgets/responsive.dart';
import 'package:flutter/material.dart';

import 'mobile_footer.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: mobile_footer(),
        tablet: mobile_footer(),
        desktop: mobile_footer());
  }
}
