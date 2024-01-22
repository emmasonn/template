import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:peniremit/core/widgets/custom_app_bar.dart';
import 'package:peniremit/features/home/app/widgets/bill_phone_number_widget.dart';
import 'package:peniremit/features/home/app/widgets/scrollable_content_widget.dart';
import 'package:peniremit/features/home/app/widgets/scrollable_tabs_widget.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class BuyDataScreen extends StatefulWidget {
  const BuyDataScreen({
    super.key,
  });

  static Page page({
    LocalKey? key,
  }) {
    return CustomPageTransition(
      key: key,
      transitionStyle: PageTransitionStyle.fade,
      child: const BuyDataScreen(),
    );
  }

  @override
  State<BuyDataScreen> createState() => _BuyDataScreenState();
}

class _BuyDataScreenState extends State<BuyDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          context,
          titleText: AppStrings.dataTxt,
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
                const ScrollableTabsWidget(
                  tabTitles: {
                    'Hot': [],
                    'Daily': [],
                    'Weekly': [],
                    'Monthly': [],
                    'Yearly': [],
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
