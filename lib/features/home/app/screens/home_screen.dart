import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/core/widgets/dashboard_app_bar_widget.dart';
import 'package:peniremit/core/widgets/rounded_image_widget.dart';
import 'package:peniremit/core/widgets/view_all_link.dart';
import 'package:peniremit/features/home/app/screens/transaction_history_list.dart';
import 'package:peniremit/features/home/app/widgets/balance_card_widget.dart';
import 'package:peniremit/features/home/app/widgets/services_widget.darts.dart';
import 'package:peniremit/features/subscriptions/app/widgets/upcoming_subscription_widget.dart';
import 'package:peniremit/navigation/app_screen_paths.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static Page page({LocalKey? key}) {
    return CustomPageTransition(
      key: key,
      transitionStyle: PageTransitionStyle.fade,
      child: const HomeScreen(),
    );
  }

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: DashboardAppBar(
        context,
        titleText: AppStrings.appNameTxt,
        centerTitle: true,
        leadingIcon: const RoundedImageWidget(
          radius: 35.0,
        ),
        style: TextStyles.h4.copyWith(
          fontWeight: FontWeight.w600,
        ),
        actionIcons: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
              color: context.colorScheme.onPrimary,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: Sizes.vlg,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
              ),
              child: Column(
                children: [
                  //balance card
                  BalanceCardWidget(
                    showHistory: true,
                    onPressed: () {
                      context.push(
                        AppScreenPaths.fundWalletPath,
                      );
                    },
                  ),
                  //space vertiically
                  vSpacer(20.0),
                  //upcoming subscription
                  const UpcomingSubscriptionWidget(),
                  //space vertiically
                  vSpacer(24.0),
                  //services widgets
                  const ServicesWidget(),
                  //space vertiically
                  vSpacer(20.0),
                  //subscription heading
                  ViewAllLink(
                    title: AppStrings.transactionsTxt,
                    onPressed: () {
                      context.push(AppScreenPaths.transactionHistoryPath);
                    },
                  )
                ],
              ),
            ),
            //transaction list
            const TransactionListWidget(
              itemCount: 4,
            ),
          ],
        ),
      ),
    );
  }
}
