import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:peniremit/core/utils/amount_formatter.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/core/widgets/simple_filled_buttom.dart';
import 'package:peniremit/features/home/app/widgets/simple_outlined_button.dart';
import 'package:peniremit/navigation/app_screen_paths.dart';
import 'package:peniremit/resources/app_assets.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

final showBalanceListener = ValueNotifier<bool>(false);

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
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: context.onSurfaceVt,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(Corners.md),
        color: context.colorScheme.surface,
        image: const DecorationImage(
          image: AssetImage(
            AppAssets.balanceBg,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: ValueListenableBuilder(
        valueListenable: showBalanceListener,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: SizedBox(
                height: 30,
                child: SimpleFilledButton(
                  text: Text(
                    AppStrings.fundWalletTxt,
                    style: TextStyles.body2.copyWith(
                      fontSize: FontSizes.s12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  backGroundColor: AppColors.accentDark,
                  onPressed: () {
                    context.push(AppScreenPaths.fundWalletPath);
                  },
                ),
              ),
            ),
            SizedBox(
              height: 40,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: DottedLine(
                  direction: Axis.vertical,
                  dashLength: 3.0,
                  dashGapLength: 1.0,
                  lineThickness: 1.0,
                  dashColor: context.colorScheme.onSurface.withOpacity(
                    0.4,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: SizedBox(
                height: 30.0,
                child: SimpleOutlinedButton(
                  text: Text(
                    AppStrings.transferFundTxt,
                    style: TextStyles.body2.copyWith(
                      fontSize: FontSizes.s12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  outlinedColor: context.colorScheme.onSurface,
                  backgroundColor: context.colorScheme.surface,
                  onPressed: () {
                    context.push(AppScreenPaths.transferFundPath);
                  },
                ),
              ),
            ),
          ],
        ),
        builder: (context, value, child) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Spacer(
                    flex: 4,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      AppStrings.availableBalanceTxt,
                      style: TextStyles.body1.copyWith(
                        fontSize: FontSizes.s13,
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  IconButton(
                    onPressed: () {
                      showBalanceListener.value = !value;
                    },
                    icon: Icon(
                      value ? Icons.visibility : Icons.visibility_off_outlined,
                      size: 20.0,
                    ),
                  ),
                ],
              ),
              Text(
                value
                    ? addDollarToAmount('100000')
                    : AppStrings.hideBalanceChar,
                style: TextStyles.t1.copyWith(
                  fontSize: FontSizes.s30,
                  height: 0.5,
                ),
              ),
              const Gap(30.0),
              child!,
            ],
          );
        },
      ),
    );
  }
}
