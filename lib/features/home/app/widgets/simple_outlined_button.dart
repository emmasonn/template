import 'package:flutter/material.dart';
import 'package:peniremit/resources/app_dimen.dart';

class SimpleOutlinedButton extends StatelessWidget {
  const SimpleOutlinedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.outlinedColor,
    required this.backgroundColor,
  });
  final Function() onPressed;
  final Widget text;
  final Color? outlinedColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0.0,
      hoverElevation: 0.0,
      focusElevation: 0.0,
      highlightElevation: 0.0,
      disabledElevation: 0.0,
      color: backgroundColor,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: outlinedColor ?? Colors.white,
        ),
        borderRadius: BorderRadius.circular(
          Corners.sm,
        ),
      ),
      onPressed: () {
        onPressed.call();
      },
      child: text,
    );
  }
}
