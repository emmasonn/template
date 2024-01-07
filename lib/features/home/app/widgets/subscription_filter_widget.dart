import 'package:flutter/material.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/core/widgets/custom_divider_widget.dart';
import 'package:peniremit/core/widgets/dot_tab_indicator.dart';
import 'package:peniremit/features/home/app/widgets/card_subscription_widget.dart';
import 'package:peniremit/resources/app_assets.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_styles.dart';

final List<Subscription> subs = [
  Subscription(
    asset: AppAssets.youtubePng,
    title: 'Youtube',
  ),
  Subscription(
    asset: AppAssets.convasPng,
    title: 'Canvas',
  ),
  Subscription(
    asset: AppAssets.netflixPng,
    title: 'Netflix',
  ),
  Subscription(
    asset: AppAssets.figmaPng,
    title: 'Figma',
  ),
  Subscription(
    asset: AppAssets.spotifyPng,
    title: 'Spotify',
  ),
  Subscription(
    asset: AppAssets.skypePng,
    title: 'Skype',
  ),
];

class SubscriptionFilterWidget extends StatelessWidget {
  const SubscriptionFilterWidget({
    super.key,
    this.primary = false,
  });
  final bool primary;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        extendBody: true,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TabBar(
              splashBorderRadius: null,
              physics: const BouncingScrollPhysics(),
              isScrollable: true,
              indicatorWeight: 6.0,
              indicator:
                  const DotTabIndicator(color: AppColors.accent, radius: 2.0),
              indicatorColor: AppColors.accent,
              indicatorPadding: EdgeInsets.zero,
              labelPadding: const EdgeInsets.only(right: 50.0),
              dividerColor: Colors.transparent,
              padding: const EdgeInsets.only(left: 20.0),
              unselectedLabelStyle:
                  TextStyles.body1.copyWith(fontSize: FontSizes.s13),
              labelStyle: TextStyles.body1.copyWith(fontSize: FontSizes.s13),
              tabAlignment: TabAlignment.start,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: const [
                Text('All'),
                Text('Active'),
                Text('Expired'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SubscriptionList(
                    primary: primary,
                    subscriptions: [],
                    onPressed: () {},
                  ),
                  SubscriptionList(
                    primary: primary,
                    subscriptions: [],
                    onPressed: () {},
                  ),
                  SubscriptionList(
                    primary: primary,
                    subscriptions: [],
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Subscription {
  final String asset;
  final String title;
  Subscription({
    required this.asset,
    required this.title,
  });
}

class SubscriptionList extends StatelessWidget {
  const SubscriptionList({
    super.key,
    required this.subscriptions,
    required this.onPressed,
    this.primary = false,
  });
  final List<Subscription> subscriptions;
  final Function() onPressed;
  final bool primary;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      key: key,
      physics: primary
          ? const NeverScrollableScrollPhysics()
          : const BouncingScrollPhysics(),
      padding: const EdgeInsets.only(
        top: 10.0,
      ),
      shrinkWrap: true,
      itemCount: primary ? 3 : subs.length,
      itemBuilder: (BuildContext context, index) {
        final item = subs[index];
        return CardSubscriptionWidget(
          sub: item,
        );
      },
      separatorBuilder: (BuildContext context, index) => const HDividerWidget(),
    );
  }
}
