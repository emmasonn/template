import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:peniremit/core/utils/enum_constants.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/core/widgets/app_identiifier_number_field.dart';
import 'package:peniremit/core/widgets/app_pop_up_field.dart';
import 'package:peniremit/core/widgets/app_text_field.dart';
import 'package:peniremit/core/widgets/custom_app_bar.dart';
import 'package:peniremit/core/widgets/custom_filled_button.dart';
import 'package:peniremit/core/widgets/show_bottom_dialog.dart';
import 'package:peniremit/features/home/app/widgets/meter_type_widget.dart';
import 'package:peniremit/features/home/app/widgets/select_amount_widget.dart';
import 'package:peniremit/features/wallet/app/widgets/authorize_transaction.dart';
import 'package:peniremit/features/wallet/app/widgets/bill_payment_widget.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class BuyElectricityScreen extends StatefulWidget {
  const BuyElectricityScreen({
    super.key,
  });

  static Page page({
    LocalKey? key,
  }) {
    return CustomPageTransition(
      key: key,
      transitionStyle: PageTransitionStyle.fade,
      child: const BuyElectricityScreen(),
    );
  }

  @override
  State<BuyElectricityScreen> createState() => _BuyElectricityScreenState();
}

class _BuyElectricityScreenState extends State<BuyElectricityScreen> {
  //meter type
  MeterType selectedMeterType = MeterType.prepaid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          context,
          titleText: AppStrings.electricityTxt,
          onBackPressed: () {
            Navigator.pop(context);
          },
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppPopUpField(
                  items: const [
                    'PHCN - Portharcourt Electricity',
                    'AEDC - Abuja Electricity',
                    'EEDC - Enugu Electricity',
                  ],
                  billType: BillType.electricity,
                  label: AppStrings.serviceProviderTxt,
                  hintText: AppStrings.selectServiceProviderTxt,
                  style: TextStyles.body1,
                  onChanged: (value) {},
                ),

                //space vertically
                const Gap(20.0),

                MeterTypeWidget(
                  meterType: selectedMeterType,
                  onSelected: (meterType) {
                    setState(() {
                      selectedMeterType = meterType;
                    });
                  },
                ),

                //meter number field
                AppIdentifierNumberField(
                  hintText: AppStrings.meterNumberHintTxt,
                  label: AppStrings.meterNumberTxt,
                  onChanged: (value) {},
                  onBeneficiaryClicked: () {},
                  style: TextStyles.body1,
                ),

                //space vertically
                const Gap(20.0),

                //choose amount widget
                const SelectAmountWidget(
                  billType: BillType.electricity,
                ),

                //space vertically
                const Gap(20.0),
                //enter amount
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

                //spaced vertically
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
                //spaced vertically
                const Gap(20.0),

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
