import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/widgets/custom_filled_button.dart';
import 'package:peniremit/core/widgets/custom_pinput.dart';
import 'package:peniremit/navigation/app_screen_paths.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/navigation/nav_utils.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class VerifyAccountScreen extends StatefulWidget {
  final NavParamWrapper<String> navCallBack;
  const VerifyAccountScreen({
    super.key,
    required this.navCallBack,
  });

  static Page page({
    LocalKey? key,
    required NavParamWrapper<String> navCallBack,
  }) {
    return CustomPageTransition(
      key: key,
      transitionStyle: PageTransitionStyle.fade,
      child: VerifyAccountScreen(
        navCallBack: navCallBack,
      ),
    );
  }

  @override
  State<VerifyAccountScreen> createState() => _VerifyAccountScreenState();
}

class _VerifyAccountScreenState extends State<VerifyAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
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
                    AppStrings.verifyAccountTxt,
                    style: TextStyles.h1,
                  ),
                  //space vertiically
                  vSpacer(10.0),
                  Text(
                    AppStrings.verifyAccountCaption,
                    style: TextStyles.caption,
                  ),
                  Text(
                    widget.navCallBack.object ?? '',
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
              style: TextStyles.notoSerifJP.copyWith(fontSize: FontSizes.s16),
              obscuringText: false,
              onCompleted: (value) {
                FocusManager.instance.primaryFocus!.unfocus();
              },
            ),
            //space vertiically
            vSpacer(30.0),
            Align(
              alignment: Alignment.topLeft,
              child: RichText(
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
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.go(AppScreenPaths.loginPath);
                          },
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
            ),
            //space vertiically
            vSpacer(40.0),
            SizedBox(
              width: Sizes.btnWidthMd,
              child: CustomFilledButton(
                text: AppStrings.verifyAccountTxt,
                onPressed: () {
                  context.go(AppScreenPaths.loginPath);
                },
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
