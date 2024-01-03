import 'package:flutter/material.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/utils/amount_formatter.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/features/home/app/widgets/subscription_filter_widget.dart';
import 'package:peniremit/features/home/app/widgets/subscription_flexible_space_widget.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/navigation/nav_utils.dart';
import 'package:peniremit/resources/app_assets.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class SubscriptionDetailScreen extends StatefulWidget {
  const SubscriptionDetailScreen({
    super.key,
    required this.params,
  });
  final NavParamWrapper<Subscription> params;
  static Page page({
    LocalKey? key,
    required NavParamWrapper<Subscription> params,
  }) {
    return CustomPageTransition(
      key: key,
      transitionStyle: PageTransitionStyle.fade,
      child: SubscriptionDetailScreen(
        params: params,
      ),
    );
  }

  @override
  State<SubscriptionDetailScreen> createState() =>
      _SubscriptionDetailScreenState();
}

class _SubscriptionDetailScreenState extends State<SubscriptionDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0.0,
            backgroundColor: context.colorScheme.surface,
            leading: IconButton(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onPressed: () {
                Navigator.pop(context);
              },
              padding: EdgeInsets.zero,
              icon: Container(
                padding: const EdgeInsets.only(
                  left: 6.0,
                  top: 4.0,
                  bottom: 4.0,
                  right: 6.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    Corners.sm,
                  ),
                  color: context.colorScheme.background,
                ),
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 14,
                  color: Colors.white,
                ),
              ),
            ),
            title: const Text(
              AppStrings.subscriptionDetailTxt,
            ),
            titleTextStyle: TextStyles.h1.copyWith(
              fontSize: FontSizes.s14,
            ),
            floating: true,
            snap: true,
            pinned: true,
            expandedHeight: Sizes.flexibleHeight + 60,
            flexibleSpace: FlexibleSpaceBar(
              background: SubscriptionFlexibleSpaceWidget(
                sub: widget.params.object!,
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            //space vertiically
            vSpacer(30.0),
            Text(
              AppStrings.subscriptionHistoryTxt,
              style: TextStyles.t1.copyWith(
                fontSize: FontSizes.s15,
              ),
            ),
            //space vertiically
            vSpacer(30.0),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Corners.md),
                border: Border.all(
                  color: context.colorScheme.onSurface,
                ),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.totalAmountSpentTxt,
                    style:
                        TextStyles.body1.copyWith(color: AppColors.surface300),
                  ),
                  Text(
                    addDollarToAmount('58000'),
                    style: TextStyles.t1,
                  )
                ],
              ),
            ),
            //space vertiically
            vSpacer(10.0),
            ListView.separated(
              shrinkWrap: true,
              primary: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ListTile(
                  leading: SizedBox.square(
                    dimension: 40,
                    child: Image.asset(widget.params.object!.asset),
                  ),
                  title: Text(
                    widget.params.object!.title,
                    style: TextStyles.t2.copyWith(
                      fontSize: FontSizes.s13,
                    ),
                  ),
                  subtitle: Text(
                    '10 April, 2023',
                    style: TextStyles.caption.copyWith(
                      fontSize: FontSizes.s10,
                    ),
                  ),
                  trailing: Text(
                    addDollarToAmount('123000'),
                    style: TextStyles.t2.copyWith(
                      fontSize: FontSizes.s16,
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const Divider(
                color: AppColors.surface300,
                height: 1,
              ),
              itemCount: 3,
            )
          ]))
        ],
      ),
    );
  }
}
