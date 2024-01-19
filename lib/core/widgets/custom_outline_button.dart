import 'package:flutter/material.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_styles.dart';

class CustomOutlineButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final Color? backgroudColor;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final double? cornerRadius;
  final TextStyle? style;
  final double? height;
  final double? width;
  const CustomOutlineButton({
    Key? key,
    required this.text,
    this.prefixIcon,
    this.onPressed,
    this.suffixIcon,
    this.cornerRadius,
    this.backgroudColor,
    this.height,
    this.width,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          elevation: 0.0,
          side: BorderSide(color: context.colorScheme.onSurface),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              cornerRadius ?? Corners.md,
            ),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (prefixIcon != null) ...[
              prefixIcon!,
            ],
            Align(
              alignment: Alignment.center,
              child: Text(
                text,
                style: style ??
                    TextStyles.btnStyle.copyWith(
                      color: AppColors.onAccent,
                    ),
              ),
            ),
            if (suffixIcon != null) ...[
              suffixIcon!,
            ]
          ],
        ),
      ),
    );
  }
}
