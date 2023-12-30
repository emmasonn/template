import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/core/widgets/custom_filled_button.dart';
import 'package:peniremit/navigation/app_screen_paths.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/resources/app_assets.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';
import 'package:sized_context/sized_context.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  static Page page({LocalKey? key}) {
    return CustomPageTransition(
      key: key,
      transitionStyle: PageTransitionStyle.fade,
      child: const OnboardingScreen(),
    );
  }

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
        ),
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.hardEdge,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: SizedBox.square(
                        dimension: context.widthPx - 50,
                        child: Image.asset(
                          AppAssets.onBoardPng,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                        text: AppStrings.onboardTxt,
                        style: TextStyles.appTitle,
                        children: [
                          TextSpan(
                            text: '\n${AppStrings.onboardExtraTxt}',
                            style: TextStyles.appTitle.copyWith(
                              color: AppColors.accentDark,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ]),
                  ),
                  //space vertically
                  vSpacer(10.0),
                  Text(
                    AppStrings.onboardCaptionTxt,
                    style: TextStyles.caption.copyWith(
                      fontSize: FontSizes.s14,
                    ),
                  ),
                  //space vertiically
                  vSpacer(20.0),
                  SizedBox(
                    width: Sizes.btnWidthMd,
                    child: CustomFilledButton(
                      text: AppStrings.signInTxt,
                      onPressed: () {
                        context.push(AppScreenPaths.loginPath);
                      },
                    ),
                  ),
                  //space vertiically
                  TextButton(
                    onPressed: () {
                      context.push(AppScreenPaths.registerPath);
                    },
                    child: Text(
                      AppStrings.registerTxt,
                      style: TextStyles.btnStyle.copyWith(
                        color: context.colorScheme.onPrimary,
                      ),
                    ),
                  ),
                  //space vertiically
                  vSpacer(20.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
