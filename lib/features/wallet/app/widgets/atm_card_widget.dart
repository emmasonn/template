import 'package:flutter/material.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/icon_fonts/peniremit_font.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/resources/app_assets.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class AtmCardWidget extends StatelessWidget {
  const AtmCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.accentLighter, width: 2),
        borderRadius: BorderRadius.circular(Corners.mmd),
        color: AppColors.accent.withOpacity(0.8),
        image: const DecorationImage(
          image: AssetImage(AppAssets.cardBg),
          alignment: Alignment.centerRight,
          fit: BoxFit.contain,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 18.0,
        vertical: 16.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //nfc icon
              const Icon(
                PeniremitIcon.nfcRight,
                size: 20,
              ),
              //smc
              Text(
                AppStrings.smcTxt,
                style: TextStyles.inter.copyWith(
                  fontSize: FontSizes.s15,
                  fontWeight: FontWeight.w700,
                  color: context.colorScheme.onPrimary.withOpacity(
                    0.8,
                  ),
                ),
              ),
            ],
          ),
          //space vertically
          const SizedBox(
            height: 20.0,
          ),
          Icon(
            PeniremitIcon.chip,
            size: 25,
            color: context.colorScheme.onPrimary.withOpacity(
              0.7,
            ),
          ),
          //space vertiically
          vSpacer(10.0),
          Text(
            '3445 4562 7710 3507',
            style: TextStyles.inter.copyWith(
              color: context.colorScheme.onPrimary.withOpacity(
                0.9,
              ),
              fontSize: FontSizes.s17,
              fontWeight: FontWeight.w600,
            ),
          ),
          //space vertiically
          vSpacer(10.0),
          Row(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.cardHolderTxt,
                    style: TextStyles.inter.copyWith(
                      fontSize: FontSizes.s10,
                      color: AppColors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  //space vertiically
                  vSpacer(5.0),
                  Text(
                    'John Carter',
                    style: TextStyles.inter.copyWith(
                        fontSize: FontSizes.s12,
                        color: AppColors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              //space vertiically
              const Spacer(),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.expireDateTxt,
                    style: TextStyles.inter.copyWith(
                      fontSize: FontSizes.s10,
                      color: AppColors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  //space vertiically
                  vSpacer(5.0),
                  Text(
                    '02/30',
                    style: TextStyles.inter.copyWith(
                      fontSize: FontSizes.s12,
                      color: AppColors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              //space vertiically
              const Spacer(
                flex: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: SizedBox(
                  width: 30,
                  child: Icon(
                    PeniremitIcon.visa,
                    size: 16,
                    color: AppColors.white.withOpacity(
                      0.75,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
