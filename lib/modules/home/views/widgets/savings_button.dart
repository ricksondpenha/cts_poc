import 'package:flutter/material.dart';

class SavingsButton extends StatelessWidget {
  const SavingsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text('Lifetime Savings',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.brown,
                      )),
                  Text('₹ 4,500',
                      style: TextStyle(
                        color: Colors.brown,
                      )),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.account_balance_wallet,
                color: Colors.brown,
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
