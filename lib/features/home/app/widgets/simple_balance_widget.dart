import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class SimpleBalanceWidget extends StatelessWidget {
  const SimpleBalanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: context.colorScheme.background,
          borderRadius: BorderRadius.circular(Corners.mmd),
          border: Border.all(
            color: context.onSurfaceVt,
          )),
      padding: EdgeInsets.symmetric(
        horizontal: 32.w,
        vertical: 10.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            AppStrings.balanceTxt,
            style: TextStyles.body1.copyWith(
              color: context.colorScheme.onSurface,
            ),
          ),
          Text(
            '\$4,000',
            style: TextStyles.body1.copyWith(
              fontSize: FontSizes.s14,
            ),
          ),
        ],
      ),
    );
  }
}
