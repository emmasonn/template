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

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ServiceItem(
          icon: PeniremitIcon.airtime,
          title: AppStrings.airtimeTxt,
          onPressed: () {
            context.push(AppScreenPaths.buyAirtimePath);
          },
        ),
        ServiceItem(
          icon: PeniremitIcon.wifi,
          title: AppStrings.dataTxt,
          iconSize: 18,
          padRight: true,
          onPressed: () {
            context.push(AppScreenPaths.buyDataPath);
          },
        ),
        ServiceItem(
          icon: PeniremitIcon.electricity,
          title: AppStrings.electricityTxt,
          onPressed: () {
            context.push(AppScreenPaths.buyElectricityPath);
          },
        ),
        ServiceItem(
          icon: Icons.tv,
          title: AppStrings.tvTxt,
          onPressed: () {
            context.push(AppScreenPaths.buyTvPath);
          },
        ),
      ],
    );
  }
}

class ServiceItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function() onPressed;
  final bool padRight;
  final double? iconSize;
  const ServiceItem({
    super.key,
    required this.icon,
    required this.title,
    this.padRight = false,
    this.iconSize,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed.call();
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 22.0,
            backgroundColor: context.colorScheme.surface,
            child: Padding(
              padding: EdgeInsets.only(
                right: padRight ? 6.0 : 0,
              ),
              child: Icon(
                icon,
                size: iconSize ?? 20,
                color: AppColors.accent,
              ),
            ),
          ),
          //space vertiically
          vSpacer(8.0),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyles.body1.copyWith(
              fontSize: FontSizes.s13,
            ),
          ),
        ],
      ),
    );
  }
}
