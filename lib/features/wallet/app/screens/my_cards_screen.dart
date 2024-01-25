import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:peniremit/core/widgets/custom_app_bar.dart';
import 'package:peniremit/core/widgets/view_all_link.dart';
import 'package:peniremit/features/home/app/screens/transaction_history_list.dart';
import 'package:peniremit/features/wallet/app/widgets/atm_card_widget.dart';
import 'package:peniremit/features/wallet/app/widgets/card_header_widget.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/resources/app_strings.dart';

class MyCardScreen extends StatefulWidget {
  const MyCardScreen({
    super.key,
  });

  static Page page({
    LocalKey? key,
  }) {
    return CustomPageTransition(
      key: key,
      transitionStyle: PageTransitionStyle.fade,
      child: const MyCardScreen(),
    );
  }

  @override
  State<MyCardScreen> createState() => _MyCardScreenState();
}

class _MyCardScreenState extends State<MyCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          context,
          titleText: AppStrings.myCardTxt,
          onBackPressed: () {
            Navigator.pop(context);
          },
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30.0, left: 16.w, right: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //balance header
                      CardHeaderWidget(),
                      //vertical spacer
                      const Gap(20.0),
                      //atm card
                      AtmCardWidget(),
                      //vertical spacer
                      const Gap(30.0),
                      ViewAllLink(
                        title: AppStrings.transactionHistoryTxt,
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                //transaction list
                const TransactionListWidget(
                  itemCount: 2,
                ),
              ],
            ),
          ),
        ));
  }
}
