import 'package:flutter/material.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/utils/amount_formatter.dart';
import 'package:peniremit/core/widgets/simple_filled_buttom.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class SubscriptionHeaderWidget extends StatelessWidget {
  const SubscriptionHeaderWidget({super.key});

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
              AppStrings.subForTheMonthTxt,
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
          ],
        ),
        SizedBox(
          height: 30,
          child: SimpleFilledButton(
            text: Text(
              AppStrings.addSubscriptionText,
              style: TextStyles.body3,
            ),
            backGroundColor: AppColors.accent,
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
