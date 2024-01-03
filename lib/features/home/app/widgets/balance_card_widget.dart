import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/utils/amount_formatter.dart';
import 'package:peniremit/core/widgets/custom_filled_button.dart';
import 'package:peniremit/navigation/app_screen_paths.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class BalanceCardWidget extends StatelessWidget {
  const BalanceCardWidget({
    super.key,
    this.showHistory = false,
    required this.onPressed,
  });
  final bool showHistory;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Corners.md)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 16.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.availableBalanceTxt,
                  style: TextStyles.body1.copyWith(
                    fontSize: FontSizes.s13,
                  ),
                ),
                //space vertiically
                vSpacer(10.0),
                Text(
                  addDollarToAmount('100000'),
                  style: TextStyles.t1.copyWith(
                    fontSize: FontSizes.s30,
                  ),
                ),
                if (showHistory) ...[
                  //space vertiically
                  vSpacer(10.0),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          AppStrings.transactionHistoryTxt,
                          style: TextStyles.h4.copyWith(
                            fontSize: FontSizes.s13,
                            color: AppColors.accent,
                          ),
                        ),
                        //space horizontally
                        hSpacer(5.0),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 12,
                          color: AppColors.accent,
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),

            SizedBox(
              height: 30,
              child: MaterialButton(
                elevation: 0.0,
                hoverElevation: 0.0,
                focusElevation: 0.0,
                highlightElevation: 0.0,
                disabledElevation: 0.0,
                color: AppColors.accentDark,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    Corners.sm,
                  ),
                ),
                onPressed: () {
                  onPressed.call();
                },
                child: Text(
                  AppStrings.fundWalletTxt,
                  style: TextStyles.body2.copyWith(
                    fontSize: FontSizes.s12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   height: 30.0,
            //   child: CustomFilledButton(
            //     text: AppStrings.tokenSentTxt,
            //     onPressed: () {},
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
