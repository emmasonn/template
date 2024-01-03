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
  final IconData? leadingIcon;
  final bool noBackButton;
  final Function()? onBackPressed;

  CustomAppBar(
    this.context, {
    Key? key,
    this.actionIcons,
    super.centerTitle = false,
    this.titleText,
    this.bottomChild,
    this.bgColor,
    super.shadowColor,
    super.elevation = 0.0,
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
          leadingWidth: noBackButton ? 0 : 30,
          leading: noBackButton
              ? const SizedBox()
              : IconButton(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onPressed: onBackPressed,
                  padding: EdgeInsets.zero,
                  icon: Container(
                    padding: const EdgeInsets.only(
                      left: 6.0,
                      top: 4.0,
                      bottom: 4.0,
                      right: 6.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        Corners.sm,
                      ),
                      color: context.colorScheme.surface,
                    ),
                    child: Icon(
                      leadingIcon ?? Icons.arrow_back_ios,
                      size: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
          actions: actionIcons,
          bottom: bottomChild,
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
