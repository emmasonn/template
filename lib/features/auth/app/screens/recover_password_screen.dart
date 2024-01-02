import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/widgets/app_text_field.dart';
import 'package:peniremit/core/widgets/custom_filled_button.dart';
import 'package:peniremit/navigation/app_screen_paths.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class RecoverPasswordScreen extends StatefulWidget {
  const RecoverPasswordScreen({super.key});

  static Page page({LocalKey? key}) {
    return CustomPageTransition(
      key: key,
      transitionStyle: PageTransitionStyle.fade,
      child: const RecoverPasswordScreen(),
    );
  }

  @override
  State<RecoverPasswordScreen> createState() => _RecoverPasswordScreenState();
}

class _RecoverPasswordScreenState extends State<RecoverPasswordScreen> {
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
            AppTextFieldEx(
              label: AppStrings.emailLabel,
              hintText: AppStrings.emailHint,
              keyboardType: TextInputType.text,
              style: TextStyles.body1,
              maxLine: 1,
              onChanged: (value) {},
            ),
            vSpacer(20.0),

            vSpacer(40.0),
            SizedBox(
              width: Sizes.btnWidthMd,
              child: CustomFilledButton(
                text: AppStrings.recoverPasswordTxt,
                onPressed: () {
                  context.go(AppScreenPaths.updatePasswordPath);
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
