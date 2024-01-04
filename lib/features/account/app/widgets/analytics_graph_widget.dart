import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class AnalyticsGraphWidget extends StatelessWidget {
  const AnalyticsGraphWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          Corners.md,
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppStrings.monthlySpentTxt,
                  style: TextStyles.body1,
                ),
                Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      Corners.sm,
                    ),
                    color: context.colorScheme.surface,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.calendar_month,
                        size: 14,
                        color: context.colorScheme.onPrimary,
                      ),
                      //space horizontally
                      hSpacer(5.0),
                      Text(
                        'Jan - Jul',
                        style: TextStyles.notoSerifJP.copyWith(
                          fontSize: FontSizes.s11,
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down_rounded,
                        size: 16,
                        color: context.colorScheme.onPrimary,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          //space vertiically
          vSpacer(5.0),
          Divider(
            height: 0.5,
            color: context.colorScheme.surface,
          ),
          //space vertiically
          vSpacer(10.0),
          SizedBox(
            height: 200,
            child: BarChart(
              randomData(),
            ),
          ),
        ],
      ),
    );
  }

  BarChartGroupData makeGroupData(
    int x,
    double y,
  ) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: y,
          color: x >= 7 ? Colors.transparent : AppColors.accent,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(Corners.vvLg),
              topRight: Radius.circular(Corners.vvLg)),
          width: 16,
        ),
      ],
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    TextStyle style = TextStyles.notoSerifJP.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: FontSizes.s11,
    );
    List<String> days = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul'];

    Widget text = Text(
      days[value.toInt()],
      style: style,
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16,
      child: text,
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    TextStyle style = TextStyles.notoSerifJP.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: FontSizes.s11,
    );
    String text;
    if (value == 0) {
      text = AppStrings.zero;
    } else if (value == 50) {
      text = AppStrings.thousand1;
    } else if (value == 100) {
      text = AppStrings.thousand10k;
    } else if (value == 150) {
      text = AppStrings.thousand100k;
    } else if (value == 200) {
      text = AppStrings.oneMillionTxt;
    } else {
      return Container();
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 0,
      child: Text(
        text,
        style: style,
      ),
    );
  }

  BarChartData randomData() {
    return BarChartData(
      maxY: 210.0,
      barTouchData: BarTouchData(
        enabled: false,
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: bottomTitles,
            reservedSize: 38,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            reservedSize: 28,
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitles,
          ),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: List.generate(
        7,
        (i) => makeGroupData(
          i,
          Random().nextInt(200).toDouble() + 10,
        ),
      ),
      gridData: const FlGridData(show: false),
    );
  }
}
