import 'package:flutter/material.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/resources/app_strings.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  static Page page({LocalKey? key}) {
    return CustomPageTransition(
      key: key,
      transitionStyle: PageTransitionStyle.fade,
      child: const WalletScreen(),
    );
  }

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      bottom: false,
      top: false,
      child: Center(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Text(
              AppStrings.walletTxt,
            ),
          ],
        ),
      ),
    );
  }
}
