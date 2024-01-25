import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:peniremit/core/widgets/custom_app_bar.dart';
import 'package:peniremit/core/widgets/custom_filled_button.dart';
import 'package:peniremit/features/wallet/app/widgets/transaction_header_widget.dart';
import 'package:peniremit/features/wallet/app/widgets/transaction_summary_widget.dart';
import 'package:peniremit/features/wallet/app/widgets/transaction_token_widget.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/resources/app_strings.dart';

class TransactionDetailScreen extends StatefulWidget {
  const TransactionDetailScreen({
    super.key,
  });

  static Page page({
    LocalKey? key,
  }) {
    return CustomPageTransition(
      key: key,
      transitionStyle: PageTransitionStyle.fade,
      child: const TransactionDetailScreen(),
    );
  }

  @override
  State<TransactionDetailScreen> createState() =>
      _TransactionDetailScreenState();
}

class _TransactionDetailScreenState extends State<TransactionDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          context,
          titleText: AppStrings.transactionDetailTxt,
          onBackPressed: () {
            Navigator.pop(context);
          },
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TransactionHeaderWidget(),
                const Gap(10.0),
                const TransactionTokenWidget(),
                const Gap(10.0),
                const TransactionSummaryWidget(),
                const Gap(30.0),
                SizedBox(
                  height: 50.0,
                  child: CustomFilledButton(
                    text: AppStrings.shareReceiptTxt,
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
