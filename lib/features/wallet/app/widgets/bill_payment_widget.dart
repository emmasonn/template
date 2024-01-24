import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/core/widgets/custom_filled_button.dart';
import 'package:peniremit/features/home/app/widgets/simple_balance_widget.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class BillPaymentWidget extends StatelessWidget {
  const BillPaymentWidget({
    super.key,
    required this.onPressed,
  });
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(Corners.lg),
          topRight: Radius.circular(Corners.lg),
        ),
        color: context.colorScheme.surface,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onPressed: () {
              Navigator.pop(context);
            },
            padding: EdgeInsets.zero,
            icon: Container(
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Corners.sm),
                color: context.colorScheme.background,
              ),
              child: const Icon(
                Icons.close_rounded,
                size: 16,
                color: Colors.white,
              ),
            ),
          ),
          Align(
            child: Text(
              '500',
              textAlign: TextAlign.center,
              style: TextStyles.t2.copyWith(
                fontSize: FontSizes.s30,
                color: Colors.white,
              ),
            ),
          ),
          //space vertically
          const Gap(10.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Product Name',
                      style: TextStyles.caption.copyWith(
                        fontSize: FontSizes.s14,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Airtime',
                      style: TextStyles.caption.copyWith(
                        fontSize: FontSizes.s14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const Gap(16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Amount',
                      style: TextStyles.caption.copyWith(
                        fontSize: FontSizes.s14,
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '0.497 USDT',
                          style: TextStyles.h1.copyWith(
                            fontSize: FontSizes.s14,
                            color: AppColors.onAccent,
                          ),
                        ),
                        const Gap(5.0),
                        Text(
                          'Exchange Rate: 1 USDT @ 1.0\$',
                          style: TextStyles.body3.copyWith(
                            fontSize: FontSizes.s10,
                            color: AppColors.onAccentLight,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                //space vertically
                const Gap(20.0),
                //Simple balance
                const SimpleBalanceWidget(),
                //space vertically
                const Gap(30.0),
                //
                SizedBox(
                  width: Sizes.btnWidthMd,
                  child: CustomFilledButton(
                    text: AppStrings.payTxt,
                    style: TextStyles.h1.copyWith(
                      fontSize: FontSizes.s14,
                      color: AppColors.onAccent,
                    ),
                    onPressed: onPressed,
                  ),
                ),
              ],
            ),
          ),
          const Gap(30.0),
        ],
      ),
    );
  }
}
