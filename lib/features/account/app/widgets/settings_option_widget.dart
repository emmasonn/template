import 'package:flutter/material.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_styles.dart';

class SettingsOptionWidget extends StatelessWidget {
  const SettingsOptionWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.onPressed,
    this.iconSize,
  });
  final IconData icon;
  final String title;
  final Function() onPressed;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onPressed.call();
      },
      leading: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.surface100.withOpacity(0.2),
          ),
          color: context.colorScheme.surface,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          size: iconSize ?? 13,
          color: AppColors.accent,
        ),
      ),
      title: Text(
        title,
        style: TextStyles.body1.copyWith(
          color: context.colorScheme.onPrimary,
          fontSize: FontSizes.s13,
        ),
      ),
    );
  }
}
