import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controller/auth_notifier.dart';
import '../../../widgets/loading_indicator.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: Center(
        child: Consumer(builder: (context, ref, child) {
          return ElevatedButton(
            onPressed: () {
              LoadingIndicator.of(context)
                  .during(ref.read(authNotifier.notifier).signin());
            },
            child: const Text('LOGIN'),
          );
        }),
      ),
    );
  }
}
