import 'package:flutter/material.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/core/widgets/custom_app_bar.dart';
import 'package:peniremit/core/widgets/custom_divider_widget.dart';
import 'package:peniremit/features/home/app/widgets/card_subscription_widget.dart';
import 'package:peniremit/features/home/app/widgets/subscription_filter_widget.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:sized_context/sized_context.dart';

class UpcomingSubscriptionsScreen extends StatefulWidget {
  const UpcomingSubscriptionsScreen({
    super.key,
  });

  static Page page({
    LocalKey? key,
  }) {
    return CustomPageTransition(
      key: key,
      transitionStyle: PageTransitionStyle.fade,
      child: const UpcomingSubscriptionsScreen(),
    );
  }

  @override
  State<UpcomingSubscriptionsScreen> createState() =>
      _UpcomingSubscriptionsScreenState();
}

class _UpcomingSubscriptionsScreenState
    extends State<UpcomingSubscriptionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          context,
          titleText: AppStrings.upcomingSubscriptionTxt,
          onBackPressed: () {
            Navigator.pop(context);
          },
        ),
        body: SafeArea(
          child: SizedBox(
            height: context.heightPx,
            width: context.widthPx,
            child: Column(
              children: [
                Expanded(
                  child: ListView.separated(
                    padding: const EdgeInsets.only(top: 20.0),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final sub = subs[index];
                      return CardSubscriptionWidget(
                        sub: sub,
                        isDue: true,
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const HDividerWidget(),
                    itemCount: subs.length,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
