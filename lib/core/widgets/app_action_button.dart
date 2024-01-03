import 'package:flutter/material.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';

class AppActionButton extends StatelessWidget {
  final String title;
  final Function()? onPressed;
  final TextStyle? style;
  final Color? background;

  const AppActionButton({
    super.key,
    this.onPressed,
    this.style,
    required this.title,
    this.background = AppColors.accent,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0.0,
      hoverElevation: 0.0,
      focusElevation: 0.0,
      highlightElevation: 0.0,
      disabledElevation: 0.0,
      color: background ?? AppColors.accentDark,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          Corners.sm,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: style ??
            const TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
      ),
    );
  }
}
