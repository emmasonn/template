import 'package:flutter/material.dart';
import 'package:peniremit/resources/app_dimen.dart';

class SimpleFilledButton extends StatelessWidget {
  const SimpleFilledButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.backGroundColor,
  });
  final Function() onPressed;
  final Widget text;
  final Color backGroundColor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0.0,
      hoverElevation: 0.0,
      focusElevation: 0.0,
      highlightElevation: 0.0,
      disabledElevation: 0.0,
      color: backGroundColor,
      shape: RoundedRectangleBorder(
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
