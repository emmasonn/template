import 'package:flutter/material.dart';
import 'package:peniremit/core/widgets/custom_app_bar.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/resources/app_strings.dart';

class BuyElectricityScreen extends StatefulWidget {
  const BuyElectricityScreen({
    super.key,
  });

  static Page page({
    LocalKey? key,
  }) {
    return CustomPageTransition(
      key: key,
      transitionStyle: PageTransitionStyle.fade,
      child: const BuyElectricityScreen(),
    );
  }

  @override
  State<BuyElectricityScreen> createState() =>
      _BuyElectricityScreenState();
}

class _BuyElectricityScreenState extends State<BuyElectricityScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          context,
          titleText: AppStrings.electricityTxt,
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
