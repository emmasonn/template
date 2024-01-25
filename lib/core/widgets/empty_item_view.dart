import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:peniremit/resources/app_assets.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';
import 'package:sized_context/sized_context.dart';

class EmptyItemView extends StatelessWidget {
  const EmptyItemView({
    super.key,
    this.image,
    this.title,
    this.subTitle,
  });

  final String? title;
  final String? image;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Gap(
            context.heightPx * 0.05,
          ),
          SizedBox.square(
            dimension: context.widthPx * 0.7,
            child: Image.asset(
              image ?? AppAssets.emptyBg,
            ),
          ),
          Text(
            title ?? AppStrings.emptyBeneficiaryTxt,
            textAlign: TextAlign.center,
            style: TextStyles.caption.copyWith(
              fontSize: FontSizes.s13,
            ),
          )
        ],
      ),
    );
  }
}
