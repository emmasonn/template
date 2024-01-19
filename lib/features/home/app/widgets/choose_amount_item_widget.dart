import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class ChooseAmountItemWidget extends StatelessWidget {
  const ChooseAmountItemWidget({
    super.key,
    required this.amount,
    required this.onPressed,
  });
  final String amount;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    double discount = 1.2;
    double totalAmount = int.parse(amount) * discount;
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: 0.0,
      margin: EdgeInsets.zero,
      color: context.colorScheme.background,
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            // horizontal: 16.0,
            // vertical: 12.0,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '\u20A6$amount',
                style: TextStyles.body1,
              ),
              const Gap(5.0),
              Text(
                '${AppStrings.billPriceTxt}\u20A6$totalAmount',
                textAlign: TextAlign.center,
                style: TextStyles.body3.copyWith(
                  fontSize: FontSizes.s8,
                  color: AppColors.accent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
