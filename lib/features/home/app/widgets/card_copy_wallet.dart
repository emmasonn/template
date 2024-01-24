import 'package:flutter/material.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/resources/app_assets.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class CardCopyWalletWidget extends StatelessWidget {
  const CardCopyWalletWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Corners.md),
              border: Border.all(
                color: context.colorScheme.surface,
              ),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 13,
                  child: Image.asset(AppAssets.tetherPng),
                ),
                //space horizontally
                hSpacer(10.0),
                Expanded(
                  child: Text(
                    'TBA78898bhhdjkjjhjdh66HYH667shhhjjnnmn',
                    style: TextStyles.body1.copyWith(fontSize: FontSizes.s14),
                  ),
                ),
              ],
            ),
          ),
        ),
        //space horizontally
        // hSpacer(10.0),
        // Container(
        //   padding: const EdgeInsets.all(8.0),
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(Corners.md),
        //     border: Border.all(
        //       color: context.colorScheme.surface,
        //     ),
        //     color: AppColors.copyBg,
        //   ),
        //   child: Column(
        //     mainAxisSize: MainAxisSize.min,
        //     children: [
        //       const Icon(
        //         Icons.copy,
        //         color: AppColors.bgBlack,
        //         size: 24,
        //       ),
        //       //space vertiically
        //       vSpacer(5.0),
        //       Text(
        //         AppStrings.copyTxt,
        //         style: TextStyles.callout.copyWith(
        //           fontSize: 14.0,
        //           color: AppColors.bgBlack,
        //         ),
        //       )
        //     ],
        //   ),
        // )
      ],
    );
  }
}
