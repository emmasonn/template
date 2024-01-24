import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/core/widgets/custom_app_bar.dart';
import 'package:peniremit/features/account/app/widgets/analytic_summary_widget.dart';
import 'package:peniremit/features/account/app/widgets/analytics_graph_widget.dart';
import 'package:peniremit/features/account/app/widgets/analytics_header_widget.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class AnalyticScreen extends StatefulWidget {
  const AnalyticScreen({super.key});

  static Page page({LocalKey? key}) {
    return CustomPageTransition(
      key: key,
      transitionStyle: PageTransitionStyle.fade,
      child: const AnalyticScreen(),
    );
  }

  @override
  State<AnalyticScreen> createState() => _AnalyticScreenState();
}

class _AnalyticScreenState extends State<AnalyticScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        titleText: AppStrings.appNameTxt,
        noBackButton: true,
        style: TextStyles.h4.copyWith(
          fontWeight: FontWeight.w600,
        ),
        actionIcons: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: context.colorScheme.onPrimary,
            ),
          ),
        ],
      ),
      body: SafeArea(
        bottom: false,
        top: false,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 20.0,
          ),
          child: Column(
            children: [
              //Total expense
              const AnalyticsHeaderWidget(),
              //space vertiically
              vSpacer(20.0),
              //summary
              const AnalyticsSummaryWidget(),
              //space vertiically
              vSpacer(20.0),
              const AnalyticsGraphWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
