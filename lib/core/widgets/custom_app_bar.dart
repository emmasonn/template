import 'package:flutter/material.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_styles.dart';

class CustomAppBar extends AppBar {
  final String? titleText;
  final List<Widget>? actionIcons;
  final BuildContext context;
  final PreferredSize? bottomChild;
  final Color? bgColor;
  final TextStyle? style;
  CustomAppBar(
    this.context, {
    Key? key,
    this.actionIcons,
    super.leading,
    super.centerTitle = false,
    this.titleText,
    this.bottomChild,
    this.bgColor,
    this.style,
  }) : super(
          key: key,
          title: titleText != null && titleText.isNotEmpty
              ? Text(titleText)
              : null,
          toolbarHeight: Sizes.toolBarHeigth,
          actions: actionIcons,
          bottom: bottomChild,
          elevation: 0.0,
          iconTheme: IconThemeData(
            size: Sizes.iconSizeMd,
            color: AppColors.onAccentLight,
          ),
          backgroundColor: bgColor ?? context.colorScheme.background,
          titleTextStyle: style ??
              TextStyles.body1.copyWith(
                color: context.colorScheme.onPrimary,
                // fontSize: ResponsiveValue(context,
                //     defaultValue: FontSizes.s12,
                //     conditionalValues: [
                //       Condition.largerThan(
                //         name: MOBILE,
                //         value: FontSizes.s14,
                //       ),
                //     ]).value,
              ),
        );
}
