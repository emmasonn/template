import 'package:flutter/material.dart';
import 'package:peniremit/core/widgets/custom_app_bar.dart';
import 'package:peniremit/core/widgets/empty_item_view.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/resources/app_strings.dart';

class ElectricityBeneficiaryScreen extends StatefulWidget {
  const ElectricityBeneficiaryScreen({super.key});

  static Page page({LocalKey? key}) {
    return CustomPageTransition(
      key: key,
      transitionStyle: PageTransitionStyle.fade,
      child: const ElectricityBeneficiaryScreen(),
    );
  }

  @override
  State<ElectricityBeneficiaryScreen> createState() =>
      _ElectricityBeneficiaryScreenState();
}

class _ElectricityBeneficiaryScreenState
    extends State<ElectricityBeneficiaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        titleText: AppStrings.electricityBeneficiaryTxt,
        onBackPressed: () {
          Navigator.pop(context);
        },
      ),
      // body: ElectricityBeneficiaryWidget(
      //   beneficiaries: [],
      //   onPressed: (beneficiary) {},
      // ),
      body: const EmptyItemView(),
    );
  }
}
