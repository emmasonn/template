import 'package:flutter/material.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class VirtualCardContainer extends StatelessWidget {
  const VirtualCardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 172,
      decoration: BoxDecoration(
          border: Border.all(color: context.colorScheme.surface, width: 0.5),
          borderRadius: const BorderRadius.all(Radius.circular(Corners.md))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.add,
            color: context.colorScheme.onPrimary,
          ),
          //space horizontally
          hSpacer(10.0),
          Text(
            AppStrings.createCardTxt,
            style: TextStyles.h4,
          )
        ],
      ),
    );
  }
}
