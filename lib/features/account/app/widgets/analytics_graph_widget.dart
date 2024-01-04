import 'package:flutter/material.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class AnalyticsGraphWidget extends StatelessWidget {
  const AnalyticsGraphWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          Corners.md,
        ),
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
                  AppStrings.monthlySpentTxt,
                  style: TextStyles.body1,
                ),
                Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      Corners.sm,
                    ),
                    color: context.colorScheme.background,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.calendar_month,
                        size: 14,
                        color: context.colorScheme.onPrimary,
                      ),
                      //space horizontally
                      hSpacer(5.0),
                      Text(
                        'Jan - Jul',
                        style: TextStyles.notoSerifJP.copyWith(
                          fontSize: FontSizes.s11,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          //space vertiically
          vSpacer(5.0),
          Divider(
            height: 0.5,
            color: context.colorScheme.surface,
          ),
          //space vertiically
          vSpacer(10.0),
        ],
      ),
    );
  }
}