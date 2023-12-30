import 'package:flutter/material.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_strings.dart';

class AnalyticScreen extends StatefulWidget {
  const AnalyticScreen({super.key});

  static Page page({LocalKey? key}) {
    return CustomPageTransition(
      key: key,
      transitionStyle: PageTransitionStyle.fade,
      child: const AnalyticScreen(),
    );
  }

  @override
  State<AnalyticScreen> createState() => _AnalyticScreenState();
}

class _AnalyticScreenState extends State<AnalyticScreen> {
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
              AppStrings.analyticsTxt,
            ),
          ],
        ),
      ),
    );
  }
}
