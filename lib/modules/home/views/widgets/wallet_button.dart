import 'package:flutter/material.dart';

class WalletButton extends StatelessWidget {
  const WalletButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: InkWell(
        onTap: () {},
        child: const CircleAvatar(
          backgroundColor: Colors.black12,
          child: Text('₹',
              style: TextStyle(
                color: Colors.brown,
                fontWeight: FontWeight.bold,
              )),
        ),
      ),
    );
  }
}
