import 'package:flutter/material.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/features/wallet/app/widgets/filter_item_widget.dart';
import 'package:peniremit/resources/app_strings.dart';

class TransactionHeaderWidget extends StatelessWidget {
  const TransactionHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: FilterItemWidget(
            onPressed: () {},
            title: AppStrings.allCategoriesTxt,
          ),
        ),
        //space horizontally
        hSpacer(10.0),
        Expanded(
            child: FilterItemWidget(
          onPressed: () {},
          title: AppStrings.allStatusTxt,
        )),
      ],
    );
  }
}
