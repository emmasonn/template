import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/widgets/app_text_field.dart';
import 'package:peniremit/core/widgets/custom_app_bar.dart';
import 'package:peniremit/core/widgets/custom_filled_button.dart';
import 'package:peniremit/core/widgets/custom_outline_button.dart';
import 'package:peniremit/navigation/app_screen_paths.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/resources/app_assets.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static Page page({LocalKey? key}) {
    return CustomPageTransition(
      key: key,
      transitionStyle: PageTransitionStyle.fade,
      child: const LoginScreen(),
    );
  }

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        context,
        centerTitle: true,
        titleText: AppStrings.appNameTxt,
        leading: const SizedBox(),
        style: TextStyles.t1.copyWith(color: AppColors.accent),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.signInTxt,
                    style: TextStyles.h1,
                  ),
                  //space vertiically
                  vSpacer(10.0),
                  Text(
                    AppStrings.signInCaptionTxt,
                    style: TextStyles.caption,
                  ),
                ],
              ),
            ),
            //space vertiically
            vSpacer(30.0),
            AppTextFieldEx(
              label: AppStrings.emailLabel,
              hintText: AppStrings.emailHint,
              onChanged: (value) {},
            ),
            vSpacer(20.0),
            AppTextFieldEx(
              label: AppStrings.passwordLabel,
              hintText: AppStrings.passwordHint,
              keyboardType: TextInputType.text,
              obscureText: true,
              maxLine: 1,
              onChanged: (value) {},
            ),
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {
                  context.push(AppScreenPaths.recoverPasswordPath);
                },
                child: Text(
                  AppStrings.forgotPasswordTxt,
                  style: TextStyles.h1.copyWith(
                    fontSize: FontSizes.s14,
                    color: AppColors.accent,
                  ),
                ),
              ),
            ),
            //space vertiically
            vSpacer(20.0),
            SizedBox(
              width: Sizes.btnWidthMd,
              child: CustomFilledButton(
                text: AppStrings.signInTxt,
                onPressed: () {
                  context.go(AppScreenPaths.createPinPath);
                },
              ),
            ),
            //space vertiically
            vSpacer(16.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppStrings.orTxt,
                )
              ],
            ),
            //space vertiically
            vSpacer(16.0),
            SizedBox(
              width: Sizes.btnWidthMd,
              child: CustomOutlineButton(
                prefixIcon: SizedBox.square(
                  dimension: 18,
                  child: Image.asset(
                    AppAssets.googlePng,
                    fit: BoxFit.cover,
                  ),
                ),
                text: AppStrings.googleSignInTxt,
                onPressed: () {},
              ),
            ),
            //space vertiically
            vSpacer(16.0),
            RichText(
              text: TextSpan(
                  text: AppStrings.donotHaveAccountCaption,
                  style: TextStyles.body1,
                  children: [
                    TextSpan(
                      text: AppStrings.signUpTxt,
                      style: TextStyles.notoSerifJP.copyWith(
                          color: AppColors.accent, fontSize: FontSizes.s14),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          context.go(AppScreenPaths.registerPath);
                        },
                    )
                  ]),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
