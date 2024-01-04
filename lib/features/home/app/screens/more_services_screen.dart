import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/icon_fonts/peniremit_font.dart';
import 'package:peniremit/core/utils/country.dart';
import 'package:peniremit/core/widgets/custom_app_bar.dart';
import 'package:peniremit/features/home/app/widgets/services_widget.darts.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';
import 'package:sized_context/sized_context.dart';

class MoreServicesScreen extends StatefulWidget {
  const MoreServicesScreen({
    super.key,
  });

  static Page page({
    LocalKey? key,
  }) {
    return CustomPageTransition(
      key: key,
      transitionStyle: PageTransitionStyle.fade,
      child: const MoreServicesScreen(),
    );
  }

  @override
  State<MoreServicesScreen> createState() => _MoreServicesScreenState();
}

class _MoreServicesScreenState extends State<MoreServicesScreen> {
  List<Country> searchResult = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          context,
          titleText: AppStrings.moreTxt,
          onBackPressed: () {
            Navigator.pop(context);
          },
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 30.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.billPaymentTxt,
                  style: TextStyles.body1.copyWith(fontSize: FontSizes.s13),
                ),
                //space vertiically
                vSpacer(30.0),
                GridView.count(
                  crossAxisCount: 4,
                  shrinkWrap: true,
                  crossAxisSpacing: context.widthPx * 0.005,
                  mainAxisSpacing: 20.0,
                  childAspectRatio: 0.9,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    ServiceItem(
                      icon: PeniremitIcon.airtime,
                      title: AppStrings.airtimeTxt,
                      onPressed: () {},
                    ),
                    ServiceItem(
                      icon: PeniremitIcon.wifi,
                      padRight: true,
                      title: AppStrings.dataTxt,
                      onPressed: () {},
                    ),
                    ServiceItem(
                      icon: PeniremitIcon.electricity,
                      title: AppStrings.electricityTxt,
                      onPressed: () {},
                    ),
                    ServiceItem(
                      icon: PeniremitIcon.tv,
                      title: AppStrings.tvTxt,
                      onPressed: () {},
                    ),
                    ServiceItem(
                      icon: PeniremitIcon.betting,
                      title: AppStrings.bettingTxt,
                      onPressed: () {},
                    ),
                    ServiceItem(
                      icon: PeniremitIcon.flight,
                      title: AppStrings.travelsTxt,
                      onPressed: () {},
                    ),
                    ServiceItem(
                      icon: PeniremitIcon.cart,
                      title: AppStrings.onlineShopping,
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
