import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class TransactionTokenWidget extends StatelessWidget {
  const TransactionTokenWidget({super.key});

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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            AppStrings.tokenTxt,
            style: TextStyles.body1.copyWith(
              color: context.colorScheme.onSurface,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '23434 323434 23434 234343',
                style: TextStyles.body1,
              ),
              const Gap(2.0),
              const Icon(
                Icons.copy,
                size: 12,
                color: AppColors.accent,
              )
            ],
          ),
        ],
      ),
    );
  }
}
