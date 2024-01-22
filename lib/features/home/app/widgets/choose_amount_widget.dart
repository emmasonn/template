import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/features/home/app/widgets/card_amount_widget.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class ChooseAmountWidget extends StatelessWidget {
  const ChooseAmountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final amounts = [100, 200, 500, 1000, 2000, 5000];

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Corners.md),
        color: context.colorScheme.surface,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 16.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.chooseAmountTxt,
            style: TextStyles.body2,
          ),
          const Gap(20.0),
          Wrap(
            runAlignment: WrapAlignment.start,
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            spacing: 16.0,
            runSpacing: 16.0,
            children: [
              ...List.generate(
                amounts.length, // items.length,
                (index) => CardAmountWidget(
                  amount: amounts[index].toString(),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          // GridView.count(
          //   crossAxisCount: 3,
          //   mainAxisSpacing: 10.0,
          //   crossAxisSpacing: 10.0,
          //   childAspectRatio: 1.2,
          //   physics: const NeverScrollableScrollPhysics(),
          //   shrinkWrap: true,
          //   children: List.generate(
          //     amounts.length,
          //     (index) => CardAmountWidget(
          //       amount: amounts[index].toString(),
          //       onPressed: () {},
          //     ),
          //   ).toList(),
          // ),
        ],
      ),
    );
  }
}
