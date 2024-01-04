import 'package:flutter/material.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/utils/amount_formatter.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class AnalyticsSummaryWidget extends StatelessWidget {
  const AnalyticsSummaryWidget({super.key});

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
                // Container(
                //   padding: const EdgeInsets.all(4.0),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(
                //       Corners.sm,
                //     ),
                //     color: context.colorScheme.background,
                //   ),
                //   child: Row(
                //     mainAxisSize: MainAxisSize.min,
                //     children: [
                //       Icon(
                //         Icons.calendar_month,
                //         size: 14,
                //         color: context.colorScheme.onPrimary,
                //       ),
                //       //space horizontally
                //       hSpacer(5.0),
                //       Text(
                //         'This month',
                //         style: TextStyles.notoSerifJP.copyWith(
                //           fontSize: FontSizes.s11,
                //         ),
                //       ),
                //     ],
                //   ),
                // )
              ],
            ),
          ),
          //space vertiically
          vSpacer(10.0),
          const Divider(
            height: 0.5,
            color: AppColors.surface500,
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
                //space vertiically
                vSpacer(10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppStrings.subscriptionTypeTxt,
                      style: TextStyles.body2.copyWith(
                        color: context.colorScheme.onSurface,
                      ),
                    ),
                    Text(
                      'Monthly & yearly',
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
