import 'package:flutter/material.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class ViewAllLink extends StatelessWidget {
  const ViewAllLink({
    super.key,
    required this.title,
    required this.onPressed,
  });
  final String title;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyles.t2.copyWith(
            fontSize: FontSizes.s15,
          ),
        ),
        TextButton(
          onPressed: () {
            onPressed.call();
          },
          child: Text(
            AppStrings.viewAllTxt,
            style: TextStyles.body1.copyWith(
              color: AppColors.accent,
              fontSize: FontSizes.s13,
            ),
          ),
        ),
      ],
    );
  }
}
