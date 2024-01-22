import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/core/widgets/custom_filled_button.dart';
import 'package:peniremit/core/widgets/custom_pinput.dart';
import 'package:peniremit/navigation/app_screen_paths.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  static Page page({LocalKey? key}) {
    return CustomPageTransition(
      key: key,
      transitionStyle: PageTransitionStyle.fade,
      child: const VerifyOtpScreen(),
    );
  }

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(
              flex: 1,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.recoverPasswordTxt,
                    style: TextStyles.h1,
                  ),
                  //space vertiically
                  vSpacer(10.0),
                  Text(
                    AppStrings.recoverPasswordCaption,
                    style: TextStyles.caption,
                  ),
                ],
              ),
            ),
            //space vertiically
            vSpacer(30.0),
            //display pin put
            CustomPinput(
              length: 6,
              style: TextStyles.body1.copyWith(fontSize: FontSizes.s16),
              obscuringText: false,
              filledColor: context.colorScheme.surface,
              onCompleted: (value) {
                FocusManager.instance.primaryFocus!.unfocus();
              },
            ),
            //space vertiically
            vSpacer(30.0),
            RichText(
              text: TextSpan(
                  text: AppStrings.didnotRecieveCodeCaption,
                  style: TextStyles.caption.copyWith(
                    fontSize: FontSizes.s13,
                  ),
                  children: [
                    TextSpan(
                      text: AppStrings.resendCodeCaption,
                      style: TextStyles.h1.copyWith(
                        color: AppColors.accent,
                        fontSize: FontSizes.s13,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                    TextSpan(
                      text: '\n${AppStrings.resendCodeCaption}\t in 00:59',
                      style: TextStyles.caption.copyWith(
                        fontSize: FontSizes.s13,
                        height: 1.5,
                      ),
                    )
                  ]),
            ),

            //space vertiically
            vSpacer(40.0),
            Center(
              child: SizedBox(
                width: Sizes.btnWidthMd,
                child: CustomFilledButton(
                  text: AppStrings.recoverPasswordTxt,
                  onPressed: () {
                    context.go(AppScreenPaths.updatePasswordPath);
                  },
                ),
              ),
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
