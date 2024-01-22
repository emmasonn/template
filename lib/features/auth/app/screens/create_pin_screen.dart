import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/core/widgets/app_text_field.dart';
import 'package:peniremit/core/widgets/custom_filled_button.dart';
import 'package:peniremit/core/widgets/custom_pinput.dart';
import 'package:peniremit/navigation/app_screen_paths.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
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
            // AppTextFieldEx(
            //   label: AppStrings.pinTxt,
            //   hintText: AppStrings.pinHint,
            //   keyboardType: TextInputType.number,
            //   style: TextStyles.body1,
            //   obscureText: true,
            //   suffixIcon: const SizedBox(),
            //   formatter: [
            //     LengthLimitingTextInputFormatter(4),
            //   ],
            //   maxLine: 1,
            //   onChanged: (value) {},
            // ),
            //display pin put
            CustomPinput(
              length: 4,
              style: TextStyles.body1.copyWith(
                fontSize: FontSizes.s16,
              ),
              obscuringText: false,
              spacing: 20.0,
              filledColor: context.colorScheme.surface,
              onCompleted: (value) {
                FocusManager.instance.primaryFocus!.unfocus();
              },
            ),
            vSpacer(70.h),
            SizedBox(
              width: Sizes.btnWidthMd,
              child: CustomFilledButton(
                text: AppStrings.createPinTxt,
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
