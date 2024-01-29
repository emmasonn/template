import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_styles.dart';

class CardCopyWalletWidget extends StatelessWidget {
  const CardCopyWalletWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16.0, top: 10.0, bottom: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Corners.md),
        color: context.colorScheme.surface,
        border: Border.all(
          color: context.onSurfaceVt,
          width: 0.5,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'TBA78898bhhdjkjjhjdh66HYH667shhhjjnnmn',
              style: TextStyles.body1.copyWith(
                fontSize: FontSizes.s14,
              ),
            ),
          ),
          const Gap(
            20.0,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.copy,
              size: 20.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
