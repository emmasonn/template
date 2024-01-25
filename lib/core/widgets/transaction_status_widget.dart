import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:peniremit/core/utils/enum_constants.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_styles.dart';

class TransactionStatusWidget extends StatelessWidget {
  const TransactionStatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    
    final transactionStatus = TransactionStatus.successful;

    double iconSize = 20.0;
    double horizontalPadding = 2.0;
    return switch (transactionStatus) {
      TransactionStatus.successful => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle_outline,
              color: AppColors.accent,
              size: iconSize,
            ),
            Gap(horizontalPadding),
            Text(
              transactionStatus.name.capitalizeFirstLetter(),
              style: TextStyles.body2.copyWith(
                color: AppColors.accent,
              ),
            )
          ],
        ),
      TransactionStatus.failed => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.cancel_outlined,
              color: AppColors.error,
              size: iconSize,
            ),
            Gap(horizontalPadding),
            Text(
              transactionStatus.name.capitalizeFirstLetter(),
              style: TextStyles.body2.copyWith(
                color: AppColors.error,
              ),
            )
          ],
        ),
      TransactionStatus.refunded => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.history,
              color: AppColors.accentDark,
              size: iconSize,
            ),
            Gap(horizontalPadding),
            Text(
              transactionStatus.name.capitalizeFirstLetter(),
              style: TextStyles.body2.copyWith(
                color: AppColors.accentDark,
              ),
            )
          ],
        ),
      TransactionStatus.pending => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.more_horiz,
              color: AppColors.orangeColor,
              size: iconSize,
            ),
            Gap(horizontalPadding),
            Text(
              transactionStatus.name.capitalizeFirstLetter(),
              style: TextStyles.body2.copyWith(
                color: AppColors.orangeColor,
              ),
            )
          ],
        ),
    };
  }
}
