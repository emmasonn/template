import 'package:flutter/material.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/icon_fonts/peniremit_font.dart';
import 'package:peniremit/core/utils/extension_util.dart';
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
          onPressed: () {},
        ),
        ServiceItem(
          icon: PeniremitIcon.wifi,
          title: AppStrings.dataTxt,
          onPressed: () {},
        ),
        ServiceItem(
          icon: PeniremitIcon.electricity,
          title: AppStrings.electricityTxt,
          onPressed: () {},
        ),
        ServiceItem(
          icon: Icons.more_horiz,
          title: AppStrings.moreTxt,
          onPressed: () {},
        ),
      ],
    );
  }
}

class ServiceItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function() onPressed;
  const ServiceItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25.0,
          backgroundColor: context.colorScheme.surface,
          child: Align(
            alignment: Alignment.center,
            child: Icon(
              icon,
              size: 20,
              color: AppColors.accent,
            ),
          ),
        ),
        //space vertiically
        vSpacer(10.0),
        Text(
          title,
          style: TextStyles.body1.copyWith(
            fontSize: FontSizes.s13,
          ),
        ),
      ],
    );
  }
}
