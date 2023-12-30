import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/widgets/app_text_field.dart';
import 'package:peniremit/core/widgets/custom_filled_button.dart';
import 'package:peniremit/navigation/app_screen_paths.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class CreatePinScreen extends StatefulWidget {
  const CreatePinScreen({super.key});

  static Page page({LocalKey? key}) {
    return CustomPageTransition(
      key: key,
      transitionStyle: PageTransitionStyle.fade,
      child: const CreatePinScreen(),
    );
  }

  @override
  State<CreatePinScreen> createState() => _CreatePinScreenState();
}

class _CreatePinScreenState extends State<CreatePinScreen> {
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
                    AppStrings.createPinTxt,
                    style: TextStyles.h1,
                  ),
                  //space vertiically
                  vSpacer(10.0),
                  Text(
                    AppStrings.createPinCaption,
                    style: TextStyles.caption,
                  ),
                ],
              ),
            ),
            //space vertiically
            vSpacer(30.0),
            AppTextFieldEx(
              label: AppStrings.pinTxt,
              hintText: AppStrings.pinHint,
              keyboardType: TextInputType.number,
              obscureText: true,
              suffixIcon: const SizedBox(),
              formatter: [
                LengthLimitingTextInputFormatter(4),
              ],
              maxLine: 1,
              onChanged: (value) {},
            ),
            vSpacer(20.0),
            AppTextFieldEx(
              label: AppStrings.confirmPinTxt,
              hintText: AppStrings.confirmPinHint,
              keyboardType: TextInputType.number,
              formatter: [
                LengthLimitingTextInputFormatter(4),
              ],
              obscureText: true,
              suffixIcon: const SizedBox(),
              maxLine: 1,
              onChanged: (value) {},
            ),
            vSpacer(40.0),
            SizedBox(
              width: Sizes.btnWidthMd,
              child: CustomFilledButton(
                text: AppStrings.verifyAccountTxt,
                onPressed: () {
                  context.go(AppScreenPaths.homePath);
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
