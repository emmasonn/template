import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/icon_fonts/peniremit_font.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/core/widgets/custom_app_bar.dart';
import 'package:peniremit/features/home/app/widgets/balance_card_widget.dart';
import 'package:peniremit/features/home/app/widgets/services_widget.darts.dart';
import 'package:peniremit/features/home/app/widgets/subscription_filter_widget.dart';
import 'package:peniremit/features/home/app/widgets/upcoming_subscription_widget.dart';
import 'package:peniremit/navigation/app_screen_paths.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/navigation/nav_utils.dart';
import 'package:peniremit/resources/app_colors.dart';
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push(
            AppScreenPaths.addSubscriptionPath,
            extra: NavParamWrapper<Subscription>(),
          );
        },
        backgroundColor: AppColors.accent,
        child: Icon(
          PeniremitIcon.add,
          size: Sizes.iconSizeMd,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          left: 16.w,
          right: 16.w,
          top: 20.0,
          bottom: 20.0,
        ),
        child: Column(
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
            //upcoming subscription
            const UpcomingSubscriptionWidget(),
            //space vertiically
            vSpacer(20.0),
            //services widgets
            const ServicesWidget(),
            //space vertiically
            vSpacer(20.0),
            //subscription heading
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppStrings.subscriptionTxt,
                  style: TextStyles.t2.copyWith(fontSize: FontSizes.s15),
                ),
                GestureDetector(
                  onTap: () {
                    context.push(AppScreenPaths.subscriptionsPath);
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
            //space vertiically
            vSpacer(16.0),
            //subscription
            const SizedBox(
              height: 250,
              child: SubscriptionFilterWidget(
                primary: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
