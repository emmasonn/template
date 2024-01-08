import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/icon_fonts/peniremit_font.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/navigation/app_screen_paths.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class CardWalletAction extends StatelessWidget {
  const CardWalletAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          decoration: BoxDecoration(
            color: context.colorScheme.surface.withOpacity(0.7),
            borderRadius: BorderRadius.circular(Corners.md),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _actionItem(
                context,
                title: AppStrings.withdrawFundTxt,
                iconData: PeniremitIcon.withdrawOuter,
                onPressed: () {
                  context.push(AppScreenPaths.withdrawFundPath);
                },
              ),
              _actionItem(
                context,
                title: AppStrings.transferFundTxt,
                iconData: PeniremitIcon.send,
                onPressed: () {
                  context.push(
                    AppScreenPaths.transferFundPath,
                  );
                },
              )
            ],
          ),
        ),
        SizedBox(
          height: 50,
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
      ],
    );
  }

  Widget _actionItem(
    BuildContext context, {
    required String title,
    required IconData iconData,
    required Function() onPressed,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: () {
            onPressed.call();
          },
          icon: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: context.colorScheme.background,
              borderRadius: BorderRadius.circular(Corners.md),
            ),
            child: Icon(
              iconData,
              size: 12,
              color: AppColors.accent,
            ),
          ),
        ),
        Text(
          title,
          style: TextStyles.t3.copyWith(
            fontSize: FontSizes.s12,
          ),
        )
      ],
    );
  }
}
