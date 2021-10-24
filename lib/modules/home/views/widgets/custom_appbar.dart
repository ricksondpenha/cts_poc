import 'package:flutter/material.dart';
import '../../../../widgets/responsive.dart';
import 'location_button.dart';
import 'logo.dart';
import 'profile_avatar.dart';
import 'savings_button.dart';
import 'wallet_button.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  CustomAppBar({Key? key})
      : preferredSize = const Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: AppBar(
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        title: const Logo(),
        actions: const [
          SavingsButton(),
          LocationButton(),
          WalletButton(),
          ProfileAvatar(),
        ],
      ),
      tablet: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Logo(),
        actions: const [
          SavingsButton(),
          LocationButton(),
          WalletButton(),
          ProfileAvatar(),
        ],
      ),
      desktop: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Logo(),
        actions: const [
          SavingsButton(),
          LocationButton(),
          WalletButton(),
          ProfileAvatar(),
        ],
      ),
    );
  }
}
