import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/core/utils/phone_number_formatter.dart';
import 'package:peniremit/core/widgets/app_text_field.dart';
import 'package:peniremit/core/widgets/custom_app_bar.dart';
import 'package:peniremit/core/widgets/custom_filled_button.dart';
import 'package:peniremit/core/widgets/custom_outline_button.dart';
import 'package:peniremit/core/widgets/phone_number_field.dart';
import 'package:peniremit/navigation/app_screen_paths.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
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
  String? phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        centerTitle: true,
        showShadow: false,
        titleText: AppStrings.appNameTxt,
        noBackButton: true,
        style: TextStyles.t1.copyWith(
          color: context.colorScheme.onPrimary,
        ),
      ),
      body: SafeArea(
        top: false,
        bottom: false,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 20.0,
          ),
          child: Column(
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
              PhoneNumberField(
                hintText: formatNumberWithSpace(AppStrings.phoneNumberHint),
                label: AppStrings.phoneNumberLabel,
                style: TextStyles.body1,
                onCountrySelected: (country) {},
                onChanged: (value) {
                  phoneNumber = value;
                },
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
                    // showProgressDialog(context);
                  },
                ),
              ),
              //space vertiically
              const Gap(20.0),
              SizedBox(
                width: Sizes.btnWidthMd,
                child: CustomOutlineButton(
                  text: AppStrings.createAccountTxt,
                  onPressed: () {
                    context.go(AppScreenPaths.registerPath);
                  },
                ),
              ),
              // //space vertiically
              // vSpacer(16.0),
              // RichText(
              //   text: TextSpan(
              //       text: AppStrings.donotHaveAccountCaption,
              //       style: TextStyles.body1,
              //       children: [
              //         TextSpan(
              //           text: AppStrings.signUpTxt,
              //           style: TextStyles.body1.copyWith(
              //             color: AppColors.accent,
              //             fontSize: FontSizes.s14,
              //           ),
              //           recognizer: TapGestureRecognizer()
              //             ..onTap = () {
              //               context.go(AppScreenPaths.registerPath);
              //             },
              //         )
              //       ]),
              // ),
              const SizedBox(
                height: 20.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
