import 'package:flutter/material.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/resources/app_strings.dart';

class UpdatePinScreen extends StatefulWidget {
  const UpdatePinScreen({super.key});

  static Page page({LocalKey? key}) {
    return CustomPageTransition(
      key: key,
      transitionStyle: PageTransitionStyle.fade,
      child: const UpdatePinScreen(),
    );
  }

  @override
  State<UpdatePinScreen> createState() => _UpdatePinScreenState();
}

class _UpdatePinScreenState extends State<UpdatePinScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        bottom: false,
        top: false,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Text(
              AppStrings.appNameTxt,
            ),
          ],
        ),
      ),
    );
  }
}
