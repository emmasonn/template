import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/core/widgets/app_text_field.dart';
import 'package:peniremit/core/widgets/custom_app_bar.dart';
import 'package:peniremit/core/widgets/custom_filled_button.dart';
import 'package:peniremit/core/widgets/show_bottom_dialog.dart';
import 'package:peniremit/features/wallet/app/widgets/authorize_transaction.dart';
import 'package:peniremit/features/wallet/app/widgets/bill_payment_widget.dart';
import 'package:peniremit/features/home/app/widgets/bill_phone_number_widget.dart';
import 'package:peniremit/features/home/app/widgets/select_amount_widget.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class BuyAirtimeScreen extends StatefulWidget {
  const BuyAirtimeScreen({
    super.key,
  });

  static Page page({
    LocalKey? key,
  }) {
    return CustomPageTransition(
      key: key,
      transitionStyle: PageTransitionStyle.fade,
      child: const BuyAirtimeScreen(),
    );
  }

  @override
  State<BuyAirtimeScreen> createState() => _BuyAirtimeScreenState();
}

class _BuyAirtimeScreenState extends State<BuyAirtimeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          context,
          titleText: AppStrings.airtimeTxt,
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
                BillPhoneNumberWidget(
                  hintText: AppStrings.phoneNumberHint,
                  onChanged: (value) {},
                  onSelectedNetworkProvider: (auto, manuel) {},
                  style: TextStyles.body1,
                ),
                const Gap(20.0),
                const SelectAmountWidget(),
                const Gap(20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppStrings.amountTxt,
                      style: TextStyles.body1,
                    ),
                    Text(
                      '${AppStrings.balanceSpacedTxt}\$4,000',
                      style: TextStyles.body2.copyWith(
                        color: context.onSurfaceVt,
                      ),
                    ),
                  ],
                ),
                const Gap(10.0),
                AppTextFieldEx(
                  prefixIcon: IconButton(
                    onPressed: null,
                    icon: Text(
                      AppStrings.nairaCharTxt,
                      style: TextStyles.body1,
                    ),
                  ),
                  hintText: AppStrings.amountRangeTxt,
                  onChanged: (value) {},
                ),
                const Gap(30.0),
                CustomFilledButton(
                  onPressed: () {
                    //show dialog
                    showSimpleBottomDialog(
                      context,
                      child: BillPaymentWidget(
                        onPressed: () {
                          //show authentication dialog
                          AuthorizeTransaction.useBiometric(
                            context,
                            onConfirm: (method, {String? pin}) {},
                          );
                        },
                      ),
                    );
                  },
                  text: AppStrings.payTxt,
                  style: TextStyles.h1.copyWith(
                    fontSize: FontSizes.s14,
                    color: AppColors.onAccent,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
