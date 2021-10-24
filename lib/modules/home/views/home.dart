import 'package:cts_poc/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'widgets/searchbar.dart';
import 'widgets/custom_appbar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(),
      body: Stack(
        alignment: Responsive.isMobile(context)
            ? Alignment.bottomCenter
            : Alignment.topCenter,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://picsum.photos/id/1011/1080/763'))),
                ),
              ],
            ),
          ),
          const SearchBar(),
        ],
      ),
    );
  }
}
