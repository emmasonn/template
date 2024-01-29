import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:peniremit/core/utils/amount_formatter.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class AccountSummaryWidget extends StatelessWidget {
  const AccountSummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: context.colorScheme.surface,
          border: Border.all(
            color: context.onSurfaceVt,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(
            Corners.md,
          )),
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: 12.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.availableBalanceTxt,
                style: TextStyles.caption.copyWith(
                  color: AppColors.onAccentLight,
                  fontSize: FontSizes.s12,
                ),
              ),
              Text(
                addDollarToAmount('100000'),
                style: TextStyles.t2.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          const Gap(10.0),
          Row(
            children: [
              Text(
                AppStrings.peniremitIdTxt,
                style: TextStyles.body2.copyWith(
                  color: context.colorScheme.onSurface,
                ),
              ),
              const Spacer(),
              Text(
                '714536663563',
                style: TextStyles.t2.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Gap(5.0),
              const Icon(
                Icons.copy,
                color: AppColors.accent,
                size: 15,
              )
            ],
          ),
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(Corners.lg),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 12.0,
                left: 12.0,
                bottom: 12.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    AppStrings.showQrCodeTxt,
                    style: TextStyles.body1.copyWith(
                      color: AppColors.accent,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 15.0,
                    color: AppColors.accent,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
