import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/icon_fonts/peniremit_font.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/core/widgets/custom_divider_widget.dart';
import 'package:peniremit/core/widgets/dashboard_app_bar_widget.dart';
import 'package:peniremit/core/widgets/rounded_image_widget.dart';
import 'package:peniremit/features/account/app/widgets/account_summary_widget.dart';
import 'package:peniremit/features/account/app/widgets/settings_option_widget.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/resources/app_colors.dart';
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
      appBar: DashboardAppBar(
        context,
        titleText: AppStrings.accountTxt,
        centerTitle: true,
        leadingIcon: const RoundedImageWidget(
          radius: 35.0,
        ),
        style: TextStyles.h4.copyWith(
          fontWeight: FontWeight.w600,
        ),
        actionIcons: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi, Dfun Peter',
                      style: TextStyles.body1.copyWith(
                          fontSize: FontSizes.s18,
                          color: context.colorScheme.onPrimary),
                    ),
                    //space vertically
                    const Gap(20.0),
                    const AccountSummaryWidget(),
                  ],
                ),
              ),
              //space vertiically
              vSpacer(20.0),
              SettingsOptionWidget(
                icon: PeniremitIcon.person,
                title: AppStrings.editProfileTxt,
                onPressed: () {},
              ),
              const HDividerWidget(),
              SettingsOptionWidget(
                icon: PeniremitIcon.lock,
                title: AppStrings.changePasswordTxt,
                onPressed: () {},
              ),
              const HDividerWidget(),
              SettingsOptionWidget(
                icon: PeniremitIcon.refer,
                title: AppStrings.referralsTxt,
                onPressed: () {},
              ),
              const HDividerWidget(),
              SettingsOptionWidget(
                icon: PeniremitIcon.file,
                title: AppStrings.privacyPolicyTxt,
                onPressed: () {},
              ),
              const HDividerWidget(),
              SettingsOptionWidget(
                icon: PeniremitIcon.share,
                title: AppStrings.supportTxt,
                onPressed: () {},
              ),
              const HDividerWidget(),
              SettingsOptionWidget(
                icon: PeniremitIcon.share,
                title: AppStrings.shareAppTxt,
                onPressed: () {},
              ),
              const HDividerWidget(),
              SettingsOptionWidget(
                icon: PeniremitIcon.share,
                title: AppStrings.rateUsTxt,
                onPressed: () {},
              ),
              const HDividerWidget(),
              SettingsOptionWidget(
                icon: PeniremitIcon.logout,
                title: AppStrings.closeAccountTxt,
                onPressed: () {},
              ),
              const HDividerWidget(),
              const Gap(5.0),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    AppStrings.logoutTxt,
                    style: TextStyles.t2.copyWith(
                      color: AppColors.error,
                      fontSize: FontSizes.s13,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
