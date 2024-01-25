import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/features/home/app/widgets/simple_outlined_button.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class CardHeaderWidget extends StatelessWidget {
  const CardHeaderWidget({super.key});

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
              AppStrings.cardBalanceTxt,
              style: TextStyles.body2.copyWith(
                color: context.colorScheme.onSurface,
              ),
            ),
            Text(
              '\$1000.00',
              style: TextStyles.body2.copyWith(
                fontSize: FontSizes.s24,
              ),
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 30.0,
              child: SimpleOutlinedButton(
                text: Text(
                  AppStrings.fundCardTxt,
                  style: TextStyles.body2.copyWith(
                    fontSize: FontSizes.s12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                outlinedColor: context.colorScheme.onSurface,
                backgroundColor: context.colorScheme.surface,
                onPressed: () {},
              ),
            ),
            const Gap(10.0),
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  Corners.sm,
                ),
                color: context.colorScheme.surface,
              ),
              // padding: const EdgeInsets.symmetric(
              //   vertical: 10.0,
              //   horizontal: 10.0,
              // ),
              child: const Icon(
                Icons.more_horiz,
                size: 20.0,
              ),
            )
          ],
        )
      ],
    );
  }
}
