import 'package:flutter/material.dart';
import 'package:peniremit/core/widgets/custom_divider_widget.dart';
import 'package:peniremit/features/home/app/widgets/card_transaction_widget.dart';

class TransactionListWidget extends StatelessWidget {
  const TransactionListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      primary: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return const CardTransactionWidget();
      },
      separatorBuilder: (context, index) => const HDividerWidget(),
      itemCount: 4,
    );
  }
}
