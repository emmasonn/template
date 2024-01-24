import 'package:flutter/material.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/utils/country.dart';
import 'package:peniremit/core/widgets/app_text_field.dart';
import 'package:peniremit/core/widgets/custom_app_bar.dart';
import 'package:peniremit/features/subscriptions/app/widgets/subscription_filter_widget.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class AllSubscriptionScreen extends StatefulWidget {
  const AllSubscriptionScreen({
    super.key,
  });

  static Page page({
    LocalKey? key,
  }) {
    return CustomPageTransition(
      key: key,
      transitionStyle: PageTransitionStyle.fade,
      child: const AllSubscriptionScreen(),
    );
  }

  @override
  State<AllSubscriptionScreen> createState() => _AllSubscriptionScreenState();
}

class _AllSubscriptionScreenState extends State<AllSubscriptionScreen> {
  List<Country> searchResult = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          context,
          titleText: AppStrings.subscriptionTxt,
          onBackPressed: () {
            Navigator.pop(context);
          },
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //space vertiically
              vSpacer(20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: AppTextFieldEx(
                  height: 40.0,
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 24,
                    color: AppColors.surface500,
                  ),
                  hintText: AppStrings.searchTxt,
                  style: TextStyles.notoSerifJP.copyWith(
                    fontSize: FontSizes.s13,
                  ),
                  onChanged: (value) {
                    if (value != null && value.isNotEmpty) {
                      setState(() {
                        searchResult = Country.all
                            .where((country) => country.name
                                .toLowerCase()
                                .contains(value.toLowerCase()))
                            .toList();
                      });
                    } else {
                      setState(() {
                        searchResult = [];
                      });
                    }
                  },
                ),
              ),
              //space vertiically
              vSpacer(24.0),
              const Expanded(
                child: SubscriptionFilterWidget(),
              ),
            ],
          ),
        ));
  }
}
