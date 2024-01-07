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
      leading: CircleAvatar(
        radius: 23,
        backgroundColor: context.colorScheme.background,
        child: Image.asset(
          AppAssets.youtubePng,
        ),
      ),
      title: Text(
        'Youtube',
        style: TextStyles.notoSerifJP.copyWith(
          fontSize: FontSizes.s13,
          color: context.colorScheme.onPrimary,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        '16 September, 2023',
        style: TextStyles.notoSerifJP.copyWith(
          fontSize: FontSizes.s10,
          color: AppColors.onAccentLight,
          fontWeight: FontWeight.w300,
        ),
      ),
      trailing: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '-${addDollarToAmount('2000')}',
            style: TextStyles.notoSerifJP.copyWith(
              fontSize: FontSizes.s16,
              fontWeight: FontWeight.w600,
              color: AppColors.error,
            ),
          ),
          //space vertiically
          vSpacer(2.0),
          Text(
            'Successful',
            style: TextStyles.notoSerifJP.copyWith(
              fontSize: FontSizes.s10,
              fontWeight: FontWeight.w300,
              color: AppColors.accentLighter,
            ),
          ),
        ],
      ),
    );
  }
}
