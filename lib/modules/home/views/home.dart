import 'package:cts_poc/modules/auth/controller/auth_notifier.dart';
import 'package:cts_poc/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        actions: [
          Consumer(builder: (context, ref, child) {
            return IconButton(
              tooltip: 'Sign Out',
              onPressed: () {
                LoadingIndicator.of(context)
                    .during(ref.read(authNotifier.notifier).signout());
              },
              icon: const Icon(Icons.exit_to_app_outlined),
            );
          })
        ],
      ),
    );
  }
}
