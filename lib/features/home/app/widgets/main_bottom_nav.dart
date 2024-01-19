import 'package:flutter/material.dart';
import 'package:peniremit/core/icon_fonts/peniremit_font.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/core/widgets/custom_bottom_nav.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class MainBottomNav extends StatelessWidget {
  const MainBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });
  final int currentIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return CustomBottomNavWidget(
      bottomNavHeight: Sizes.bottonNavHeight,
      iconSize: Sizes.bottomNavIconSizeSm,
      style: TextStyles.body1
          .copyWith(fontWeight: FontWeight.w500, fontSize: FontSizes.s13),
      activeColor: AppColors.accent,
      activeBgColor: context.colorScheme.surface,
      color: const Color(0xff8F8F8F),
      items: <PersistentBottomNavBarItem>[
        PersistentBottomNavBarItem(
          icon: const Icon(PeniremitIcon.home),
          title: AppStrings.homeTxt,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(PeniremitIcon.wallet),
          title: AppStrings.walletTxt,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(PeniremitIcon.analytics),
          title: AppStrings.subscriptionTxt,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(PeniremitIcon.settings),
          title: AppStrings.settingsTxt,
        ),
      ],
      selectedIndex: currentIndex,
      onItemSelected: onTap,
    );
  }
}
