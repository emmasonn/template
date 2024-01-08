import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/core/widgets/app_text_field.dart';
import 'package:peniremit/core/widgets/custom_app_bar.dart';
import 'package:peniremit/core/widgets/custom_filled_button.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class TransferFundScreen extends StatefulWidget {
  const TransferFundScreen({
    super.key,
  });

  static Page page({
    LocalKey? key,
  }) {
    return CustomPageTransition(
      key: key,
      transitionStyle: PageTransitionStyle.fade,
      child: const TransferFundScreen(),
    );
  }

  @override
  State<TransferFundScreen> createState() => _TransferFundScreenState();
}

class _TransferFundScreenState extends State<TransferFundScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          context,
          titleText: AppStrings.transferFundTxt,
          onBackPressed: () {
            Navigator.pop(context);
          },
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppTextFieldEx(
                  height: 60,
                  label: AppStrings.walletAddressTxt,
                  hintText: AppStrings.enterWalletAddressHintTxt,
                  maxLine: null,
                  expands: true,
                  onChanged: (value) {},
                ),
                //space vertiically
                vSpacer(16.0),
                AppTextFieldEx(
                  label: AppStrings.amountTxt,
                  hintText: AppStrings.enterAmountHintTxt,
                  suffixIcon: Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                        color: context.colorScheme.surface,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(Corners.md),
                          bottomRight: Radius.circular(Corners.md),
                        )),
                    child: SizedBox(
                      width: 60,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          VerticalDivider(
                            thickness: 1,
                            width: 1,
                            color: context.colorScheme.onSurface.withOpacity(0.3),
                          ),
                          //space vertiically
                          hSpacer(12.0),
                          Text(
                            AppStrings.usdTxt,
                            textAlign: TextAlign.center,
                            style: TextStyles.body1,
                          )
                        ],
                      ),
                    ),
                  ),
                  onChanged: (value) {},
                ),

                vSpacer(50.0),

                CustomFilledButton(
                  text: AppStrings.transferTxt,
                  onPressed: () {},
                )
              ],
            ),
          ),
        ));
  }
}
