import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/utils/amount_formatter.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/features/home/app/widgets/subscription_filter_widget.dart';
import 'package:peniremit/resources/app_assets.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class SubscriptionFlexibleSpaceWidget extends StatelessWidget {
  const SubscriptionFlexibleSpaceWidget({
    super.key,
    required this.sub,
  });
  final Subscription sub;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.flexibleHeight,
      margin: EdgeInsets.only(
        top: Sizes.flexibleTopPadding,
      ),
      color: context.colorScheme.background,
      clipBehavior: Clip.none,
      child: Material(
        color: context.colorScheme.surface,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(Corners.lg),
            bottomRight: Radius.circular(Corners.lg),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 20.0,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 35,
                child: Image.asset(
                  sub.asset,
                ),
              ),
              //space vertiically
              vSpacer(10.0),
              Text(
                sub.title,
                style: TextStyles.t2.copyWith(fontSize: 20.0),
              ),
              //space vertiically
              vSpacer(10.0),
              RichText(
                text: TextSpan(
                  text: '${addDollarToAmount('12500')}/',
                  style: TextStyles.t1.copyWith(fontSize: FontSizes.s16),
                  children: [
                    TextSpan(
                      text: 'month',
                      style: TextStyles.t1.copyWith(
                        fontSize: FontSizes.s10,
                      ),
                    )
                  ],
                ),
              ),
              vSpacer(20.0),
              //plans
              Row(
                children: [
                  Text(
                    AppStrings.statusTxt,
                    style: TextStyles.t1.copyWith(
                      fontSize: FontSizes.s14,
                      color: context.colorScheme.onSurface,
                    ),
                  ),
                  Text(
                    'Active',
                    style: TextStyles.h4.copyWith(
                      fontSize: FontSizes.s14,
                      color: AppColors.accentLight
                    ),
                  ),
                  const Spacer(),
                  Text(
                    AppStrings.planTxt,
                    style: TextStyles.t1.copyWith(
                      fontSize: FontSizes.s14,
                      color: context.colorScheme.onSurface,
                    ),
                  ),
                  Text(
                    'Premium',
                    style: TextStyles.h4.copyWith(fontSize: FontSizes.s14),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Next due to 20th, Aug.',
                    style: TextStyles.body3.copyWith(
                      fontSize: FontSizes.s10,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 10.0),
                      child: Text(
                        AppStrings.seeOtherSubPlans,
                        style: TextStyles.h1.copyWith(
                          fontSize: FontSizes.s10,
                          color: AppColors.accent,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
