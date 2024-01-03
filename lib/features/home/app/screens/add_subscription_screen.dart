import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/widgets/app_text_field.dart';
import 'package:peniremit/core/widgets/custom_app_bar.dart';
import 'package:peniremit/core/widgets/custom_filled_button.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';

class AddSubscriptionScreen extends StatefulWidget {
  const AddSubscriptionScreen({
    super.key,
  });

  static Page page({
    LocalKey? key,
  }) {
    return CustomPageTransition(
      key: key,
      transitionStyle: PageTransitionStyle.fade,
      child: const AddSubscriptionScreen(),
    );
  }

  @override
  State<AddSubscriptionScreen> createState() => _AddSubscriptionScreenState();
}

class _AddSubscriptionScreenState extends State<AddSubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          context,
          titleText: AppStrings.addSubscriptionTxt,
          leadingIcon: Icons.close,
          onBackPressed: () {
            Navigator.pop(context);
          },
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppTextFieldEx(
                  label: AppStrings.productNameTxt,
                  hintText: AppStrings.selectProductTxt,
                  onChanged: (value) {},
                ),
                //space vertiically
                vSpacer(16.0),
                AppTextFieldEx(
                  label: AppStrings.subscriptionTierTxt,
                  hintText: AppStrings.selectSubTierText,
                  onChanged: (value) {},
                ),
                //space vertiically
                vSpacer(16.0),
                //space vertiically
                vSpacer(40.0),
                SizedBox(
                  width: Sizes.btnWidthMd,
                  child: CustomFilledButton(
                    text: AppStrings.addSubscriptionText,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
