import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/utils/phone_number_formatter.dart';
import 'package:peniremit/core/widgets/app_text_field.dart';
import 'package:peniremit/core/widgets/custom_app_bar.dart';
import 'package:peniremit/core/widgets/custom_filled_button.dart';
import 'package:peniremit/core/widgets/custom_outline_button.dart';
import 'package:peniremit/core/widgets/phone_number_field.dart';
import 'package:peniremit/navigation/app_screen_paths.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/navigation/nav_utils.dart';
import 'package:peniremit/resources/app_assets.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  static Page page({LocalKey? key}) {
    return CustomPageTransition(
      key: key,
      transitionStyle: PageTransitionStyle.fade,
      child: const RegisterScreen(),
    );
  }

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  //variables
  String? emailAddress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        context,
        centerTitle: true,
        showShadow: false,
        noBackButton: true,
        titleText: AppStrings.appNameTxt,
        style: TextStyles.t1.copyWith(
          color: AppColors.accent,
        ),
      ),
      body: SafeArea(
        bottom: false,
        top: false,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.signUpTxt,
                      style: TextStyles.h1,
                    ),
                    //space vertiically
                    vSpacer(10.0),
                    Text(
                      AppStrings.signUpCaptionTxt,
                      style: TextStyles.caption,
                    ),
                  ],
                ),
              ),
              //space vertiically
              vSpacer(30.0),
              AppTextFieldEx(
                label: AppStrings.fullNameLabel,
                hintText: AppStrings.fullNameHint,
                style: TextStyles.body1,
                onChanged: (value) {},
              ),
              vSpacer(20.0),
              AppTextFieldEx(
                label: AppStrings.emailLabel,
                hintText: AppStrings.emailHint,
                style: TextStyles.body1,
                onChanged: (value) {
                  emailAddress = value;
                },
              ),
              vSpacer(20.0),
              PhoneNumberField(
                hintText: formatNumberWithSpace(AppStrings.phoneNumberHint),
                label: AppStrings.phoneNumberLabel,
                style: TextStyles.body1,
                onCountrySelected: (country) {},
                onChanged: (value) {},
              ),
              vSpacer(20.0),
              AppTextFieldEx(
                label: AppStrings.passwordLabel,
                hintText: AppStrings.passwordHint,
                keyboardType: TextInputType.text,
                style: TextStyles.body1,
                obscureText: true,
                maxLine: 1,
                onChanged: (value) {},
              ),
              //space vertiically
              vSpacer(30.0),
              SizedBox(
                width: Sizes.btnWidthMd,
                child: CustomFilledButton(
                  text: AppStrings.signUpTxt,
                  onPressed: () {
                    // context.go(AppScreenPaths.verifyAccountPath,
                    //     extra: NavCallBack(
                    //       object: emailAddress,
                    //     ));
                    context.go(AppScreenPaths.homePath);
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
                      fit: BoxFit.contain,
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
                    text: AppStrings.alreadyHaveAccountTxt,
                    style: TextStyles.body1,
                    children: [
                      TextSpan(
                        text: AppStrings.signInTxt,
                        style: TextStyles.notoSerifJP.copyWith(
                            color: AppColors.accent, fontSize: FontSizes.s14),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.go(AppScreenPaths.loginPath);
                          },
                      )
                    ]),
              ),
              //space vertiically
              vSpacer(30.0)
            ],
          ),
        ),
      ),
    );
  }
}
