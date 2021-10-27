import 'package:cts_poc/modules/home/views/widgets/footer/mobile_footer.dart';
import 'package:cts_poc/modules/home/views/widgets/footer/web_footer.dart';
import 'package:cts_poc/widgets/responsive.dart';
import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: MobileFooter(),
      tablet: MobileFooter(),
      desktop: WebFooter(),
    );
  }
}
