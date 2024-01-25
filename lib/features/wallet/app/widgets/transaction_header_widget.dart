import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/core/widgets/transaction_status_widget.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_styles.dart';

class TransactionHeaderWidget extends StatelessWidget {
  const TransactionHeaderWidget({super.key});

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
        children: [
          Text(
            '+\$1000.00',
            style: TextStyles.t2.copyWith(fontSize: FontSizes.s26),
          ),
          const Gap(5.0),
          const TransactionStatusWidget(),
          const Gap(10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'fee',
                style: TextStyles.body1
                    .copyWith(color: context.colorScheme.onSurface),
              ),
              Text(
                '\$1000.00',
                style: TextStyles.body1
                    .copyWith(color: context.colorScheme.onSurface),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
