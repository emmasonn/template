import 'package:flutter/material.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/utils/amount_formatter.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class AnalyticsHeaderWidget extends StatelessWidget {
  const AnalyticsHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              AppStrings.totalExpensesTxt,
              style: TextStyles.caption,
            ),
            //space vertiically
            vSpacer(5.0),
            Text(
              addDollarToAmount('150000'),
              style: TextStyles.t1.copyWith(
                fontSize: FontSizes.s30,
                fontWeight: FontWeight.w700,
              ),
            ),
            //space vertiically
            vSpacer(5.0),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  Corners.hMd,
                ),
                color: const Color(0xff3F5E34),
              ),
              child: Text(
                '2% lower than previous month',
                style: TextStyles.notoSerifJP.copyWith(
                  fontSize: FontSizes.s10,
                ),
              ),
            )
          ],
        ),
        Container(
          padding: const EdgeInsets.all(4.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                Corners.sm,
              ),
              color: context.colorScheme.surface),
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
                'This month',
                style: TextStyles.notoSerifJP.copyWith(
                  fontSize: FontSizes.s11,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
