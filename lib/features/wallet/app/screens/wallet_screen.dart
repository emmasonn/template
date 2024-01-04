import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/core/widgets/custom_app_bar.dart';
import 'package:peniremit/features/home/app/screens/transaction_history_list.dart';
import 'package:peniremit/features/home/app/widgets/balance_card_widget.dart';
import 'package:peniremit/features/home/app/widgets/virtual_card_container.dart';
import 'package:peniremit/navigation/app_screen_paths.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

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
    return Scaffold(
      appBar: CustomAppBar(
        context,
        titleText: AppStrings.appNameTxt,
        noBackButton: true,
        style: TextStyles.h4.copyWith(
          fontWeight: FontWeight.w600,
        ),
        actionIcons: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: context.colorScheme.onPrimary,
            ),
          ),
        ],
      ),
      body: SafeArea(
        bottom: false,
        top: false,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //balance card
                    BalanceCardWidget(
                      onPressed: () {
                        context.push(
                          AppScreenPaths.fundWalletPath,
                        );
                      },
                    ),
                    //space vertiically
                    vSpacer(20.0),
                    //card widget
                    Text(
                      AppStrings.myCardTxt,
                      style: TextStyles.notoSerifJP.copyWith(
                        fontSize: 16.0,
                      ),
                    ),
                    //space vertiically
                    vSpacer(20.0),
                    //emptyCard
                    const VirtualCardContainer(),
                    vSpacer(20.0),
                    //card widget
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppStrings.transactionHistoryTxt,
                          style: TextStyles.body1.copyWith(fontSize: 15.0),
                        ),
                        GestureDetector(
                          onTap: () {
                            context.push(
                              AppScreenPaths.subscriptionsPath,
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 10.0,
                              bottom: 10.0,
                              left: 10.0,
                            ),
                            child: Text(
                              AppStrings.viewAllTxt,
                              style: TextStyles.body1.copyWith(
                                color: AppColors.accent,
                                fontSize: FontSizes.s13,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //list the transactions
              const TransactionListWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
