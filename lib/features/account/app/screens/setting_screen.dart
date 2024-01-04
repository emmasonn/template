import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/icon_fonts/peniremit_font.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/core/widgets/custom_app_bar.dart';
import 'package:peniremit/features/account/app/widgets/settings_option_widget.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  static Page page({LocalKey? key}) {
    return CustomPageTransition(
      key: key,
      transitionStyle: PageTransitionStyle.fade,
      child: const SettingScreen(),
    );
  }

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        titleText: AppStrings.appNameTxt,
        noBackButton: true,
        style: TextStyles.h4.copyWith(
          fontWeight: FontWeight.w600,
        ),
        actionIcons: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: context.colorScheme.onPrimary,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            vertical: 30.0,
          ),
          child: Center(
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 35,
                  backgroundColor: Color(0xffFCB859),
                  child: Text(
                    'DP',
                  ),
                ),
                //space vertiically
                vSpacer(10.0),
                Text(
                  'Dfun Peter',
                  style: TextStyles.body1.copyWith(fontSize: FontSizes.s16),
                ),
                //space vertiically
                vSpacer(5.0),
                Text(
                  'words.cs1@gmail.com',
                  style: TextStyles.body1,
                ),
                //space vertiically
                vSpacer(30.0),
                SettingsOptionWidget(
                  icon: PeniremitIcon.person,
                  title: AppStrings.editProfileTxt,
                  onPressed: () {},
                ),
                Divider(
                  height: 1,
                  color: context.colorScheme.surface,
                ),
                SettingsOptionWidget(
                  icon: PeniremitIcon.lock,
                  title: AppStrings.changePasswordTxt,
                  onPressed: () {},
                ),
                Divider(
                  height: 1,
                  color: context.colorScheme.surface,
                ),
                SettingsOptionWidget(
                  icon: PeniremitIcon.referrals,
                  title: AppStrings.referralsTxt,
                  onPressed: () {},
                ),
                Divider(
                  height: 1,
                  color: context.colorScheme.surface,
                ),
                SettingsOptionWidget(
                  icon: PeniremitIcon.policy,
                  title: AppStrings.privacyPolicyTxt,
                  onPressed: () {},
                ),
                Divider(
                  height: 1,
                  color: context.colorScheme.surface,
                ),
                SettingsOptionWidget(
                  icon: PeniremitIcon.share,
                  title: AppStrings.shareAppTxt,
                  onPressed: () {},
                ),
                Divider(
                  height: 1,
                  color: context.colorScheme.surface,
                ),
                SettingsOptionWidget(
                  icon: PeniremitIcon.logout,
                  title: AppStrings.logoutTxt,
                  onPressed: () {},
                ),
                Divider(
                  height: 1,
                  color: context.colorScheme.surface,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
