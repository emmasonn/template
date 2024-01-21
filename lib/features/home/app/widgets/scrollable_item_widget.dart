import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class ScrollableItemWidget extends StatelessWidget {
  const ScrollableItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Corners.md),
        color: context.colorScheme.background,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 10.0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '100MB',
            style: TextStyles.body1,
          ),
          Text(
            '1 Day',
            style: TextStyles.body2.copyWith(
              color: context.colorScheme.onSurface,
            ),
          ),
          Text(
            '${AppStrings.billPriceTxt} N590',
            style: TextStyles.body1.copyWith(
              fontSize: FontSizes.s8,
              color: AppColors.accent,
            ),
          ),
        ],
      ),
    );
  }
}
