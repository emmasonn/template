import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class TransactionSummaryWidget extends StatelessWidget {
  const TransactionSummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 16.0,
      ),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        border: Border.all(color: context.onSurfaceVt, width: 0.5),
        borderRadius: BorderRadius.circular(Corners.md),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.transactionDetailTxt,
            style: TextStyles.t2.copyWith(
              fontSize: FontSizes.s16,
            ),
          ),
          const Gap(20.0),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              AppStrings.transactionTypeTxt,
              style: TextStyles.body1
                  .copyWith(color: context.colorScheme.onSurface),
            ),
            Text(
              '\$1000.00',
              style: TextStyles.body1,
            ),
          ]),
          const Gap(10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.meterNumberTxt,
                style: TextStyles.body1
                    .copyWith(color: context.colorScheme.onSurface),
              ),
              Text(
                '\$1000.00',
                style: TextStyles.body1,
              ),
            ],
          ),
          const Gap(10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.customerNameTxt,
                style: TextStyles.body1
                    .copyWith(color: context.colorScheme.onSurface),
              ),
              Text(
                '\$1000.00',
                style: TextStyles.body1,
              ),
            ],
          ),
          const Gap(10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.addressTxt,
                style: TextStyles.body1
                    .copyWith(color: context.colorScheme.onSurface),
              ),
              Text(
                '\$1000.00',
                style: TextStyles.body1,
              ),
            ],
          ),
          const Gap(10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.meterTypeTxt,
                style: TextStyles.body1
                    .copyWith(color: context.colorScheme.onSurface),
              ),
              Text(
                '\$1000.00',
                style: TextStyles.body1,
              ),
            ],
          ),
          const Gap(10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.transactionNumberTxt,
                style: TextStyles.body1
                    .copyWith(color: context.colorScheme.onSurface),
              ),
              Text(
                '\$1000.00',
                style: TextStyles.body1,
              ),
            ],
          ),
          const Gap(10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.transactionDateTxt,
                style: TextStyles.body1
                    .copyWith(color: context.colorScheme.onSurface),
              ),
              Text(
                '\$1000.00',
                style: TextStyles.body1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
