import 'package:flutter/material.dart';
import 'package:peniremit/core/widgets/custom_app_bar.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/resources/app_strings.dart';

class BuyCableTvScreen extends StatefulWidget {
  const BuyCableTvScreen({
    super.key,
  });

  static Page page({
    LocalKey? key,
  }) {
    return CustomPageTransition(
      key: key,
      transitionStyle: PageTransitionStyle.fade,
      child: const BuyCableTvScreen(),
    );
  }

  @override
  State<BuyCableTvScreen> createState() =>
      _BuyCableTvScreenState();
}

class _BuyCableTvScreenState extends State<BuyCableTvScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          context,
          titleText: AppStrings.subscriptionTxt,
          onBackPressed: () {
            Navigator.pop(context);
          },
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [],
          ),
        ));
  }
}
