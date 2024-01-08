import 'package:flutter/material.dart';
import 'package:peniremit/core/widgets/custom_divider_widget.dart';
import 'package:peniremit/features/home/app/widgets/card_transaction_widget.dart';

class TransactionListWidget extends StatelessWidget {
  const TransactionListWidget({
    super.key,
    this.itemCount,
  });
  final int? itemCount;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.only(bottom: 20.0),
      shrinkWrap: true,
      primary: itemCount != null ? true : false,
      physics: itemCount != null
          ? const BouncingScrollPhysics()
          : const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return const CardTransactionWidget();
      },
      separatorBuilder: (context, index) => const HDividerWidget(),
      itemCount: itemCount ?? 4,
    );
  }
}
