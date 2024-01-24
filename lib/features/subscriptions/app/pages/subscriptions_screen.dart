import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/core/widgets/dashboard_app_bar_widget.dart';
import 'package:peniremit/core/widgets/rounded_image_widget.dart';
import 'package:peniremit/core/widgets/view_all_link.dart';
import 'package:peniremit/features/subscriptions/app/widgets/subscription_filter_widget.dart';
import 'package:peniremit/features/subscriptions/app/widgets/subscription_header_widget.dart';
import 'package:peniremit/features/subscriptions/app/widgets/subscription_summary_widget.dart';
import 'package:peniremit/navigation/app_screen_paths.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class SubscriptionsScreen extends StatefulWidget {
  const SubscriptionsScreen({super.key});

  static Page page({LocalKey? key}) {
    return CustomPageTransition(
      key: key,
      transitionStyle: PageTransitionStyle.fade,
      child: const SubscriptionsScreen(),
    );
  }

  @override
  State<SubscriptionsScreen> createState() => _SubscriptionsScreenState();
}

class _SubscriptionsScreenState extends State<SubscriptionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DashboardAppBar(
        context,
        titleText: AppStrings.subscriptionTxt,
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
      body: SafeArea(
        bottom: false,
        top: false,
        child: SingleChildScrollView(
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
                    //Total expense
                    const SubscriptionHeaderWidget(),
                    //space vertiically
                    vSpacer(20.0),
                    //summary
                    const SubscriptionSummaryWidget(),
                    //space vertiically
                    vSpacer(20.0),
                    //subscription header
                    ViewAllLink(
                      title: AppStrings.subscriptionTxt,
                      onPressed: () {
                        context.push(AppScreenPaths.allSubscriptionsPath);
                      },
                    )
                  ],
                ),
              ),
              const SubscriptionFilterWidget(
                primary: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}
