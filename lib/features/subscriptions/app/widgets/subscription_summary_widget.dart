import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/utils/amount_formatter.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class SubscriptionSummaryWidget extends StatelessWidget {
  const SubscriptionSummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          Corners.md,
        ),
        color: context.colorScheme.surface,
      ),
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppStrings.subscriptionSummaryTxt,
                  style: TextStyles.body1,
                ),
              ],
            ),
          ),
          //space vertiically
          vSpacer(10.0),
          Divider(
            height: 0.5,
            color: context.dividerColor,
          ),
          //space vertiically
          vSpacer(10.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppStrings.totalSubscriptionTxt,
                      style: TextStyles.body2.copyWith(
                        color: context.colorScheme.onSurface,
                      ),
                    ),
                    Text(
                      addDollarToAmount('50000'),
                      style: TextStyles.body2.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                //space vertiically
                vSpacer(10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppStrings.paidSubscriptionTxt,
                      style: TextStyles.body2.copyWith(
                        color: context.colorScheme.onSurface,
                      ),
                    ),
                    Text(
                      addDollarToAmount('40000'),
                      style: TextStyles.body2.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                //space vertiically
                vSpacer(10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppStrings.unPaidSubscriptionTxt,
                      style: TextStyles.body2.copyWith(
                        color: context.colorScheme.onSurface,
                      ),
                    ),
                    Text(
                      addDollarToAmount('10000'),
                      style: TextStyles.body2.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
