import 'package:flutter/material.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_styles.dart';

class DashboardAppBar extends AppBar {
  final String? titleText;
  final List<Widget>? actionIcons;
  final BuildContext context;
  final PreferredSize? bottomChild;
  final bool showShadow;
  final Color? bgColor;
  final TextStyle? style;
  final Widget? leadingIcon;
  final bool noBackButton;
  final Function()? onBackPressed;

  DashboardAppBar(
    this.context, {
    Key? key,
    this.actionIcons,
    super.centerTitle = false,
    this.showShadow = true,
    this.titleText,
    this.bottomChild,
    this.bgColor,
    this.leadingIcon,
    this.style,
    this.noBackButton = false,
    this.onBackPressed,
  }) : super(
          key: key,
          title: titleText != null && titleText.isNotEmpty
              ? Text(titleText)
              : null,
          toolbarHeight: Sizes.toolBarHeigth,
          leadingWidth: noBackButton ? 0 : 50,
          scrolledUnderElevation: 0.0,
          leading: noBackButton ? const SizedBox() : leadingIcon,
          actions: actionIcons,
          bottom: bottomChild,
          iconTheme: IconThemeData(
            size: Sizes.iconSizeMd,
            color: AppColors.onAccentLight,
          ),
          shadowColor: showShadow ? context.colorScheme.onSurface : null,
          elevation: showShadow ? 0.3 : 0.0,
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
