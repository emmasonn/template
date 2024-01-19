import 'package:flutter/material.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/utils/amount_formatter.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/resources/app_assets.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_styles.dart';

class CardTransactionWidget extends StatelessWidget {
  const CardTransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.accentLighter,
          ),
          shape: BoxShape.circle,
          color: context.colorScheme.background,
        ),
        padding: const EdgeInsets.all(4.0),
        child: Image.asset(
          AppAssets.youtubePng,
        ),
      ),
      title: Text(
        'Youtube',
        style: TextStyles.h1.copyWith(
          fontSize: FontSizes.s13,
          color: context.colorScheme.onPrimary,
        ),
      ),
      subtitle: Text(
        '16 September, 2023',
        style: TextStyles.caption.copyWith(
          fontSize: FontSizes.s10,
          color: AppColors.onAccentLight,
        ),
      ),
      trailing: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '-${addDollarToAmount('2000')}',
            style: TextStyles.t3.copyWith(
              fontSize: FontSizes.s16,
              fontWeight: FontWeight.w600,
              color: AppColors.white,
            ),
          ),
          //space vertiically
          vSpacer(2.0),
          Text(
            'Successful',
            style: TextStyles.caption.copyWith(
              fontSize: FontSizes.s10,
              color: AppColors.accentLighter,
            ),
          ),
        ],
      ),
    );
  }
}
