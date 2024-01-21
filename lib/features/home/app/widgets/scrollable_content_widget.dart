import 'package:flutter/material.dart';
import 'package:peniremit/features/home/app/widgets/scrollable_item_widget.dart';

class ScrollableContentWidget extends StatelessWidget {
  const ScrollableContentWidget({
    super.key,
    required this.items,
  });
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Wrap(
        runAlignment: WrapAlignment.start,
        alignment: WrapAlignment.start,
        crossAxisAlignment: WrapCrossAlignment.start,
        spacing: 16.0,
        runSpacing: 16.0,
        children: [
          ...List.generate(
            5, // items.length,
            (index) => const ScrollableItemWidget(),
          ),
        ],
      ),
    );
  }
}
