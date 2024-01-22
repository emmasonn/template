import 'package:flutter/material.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_styles.dart';

class CustomFilledButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final Color? backgroudColor;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final double? cornerRadius;
  final TextStyle? style;
  final double? height;
  final double? width;
  final bool wrapContent;
  const CustomFilledButton({
    Key? key,
    required this.text,
    this.prefixIcon,
    this.onPressed,
    this.suffixIcon,
    this.cornerRadius,
    this.backgroudColor,
    this.height,
    this.width,
    this.wrapContent = false,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? Sizes.btnHeightMd,
      width: width ?? Sizes.btnWidthMd,
      child: MaterialButton(
        elevation: 0.0,
        hoverElevation: 0.0,
        focusElevation: 0.0,
        highlightElevation: 0.0,
        disabledElevation: 0.0,
        color: backgroudColor ?? AppColors.accentDark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            cornerRadius ?? Corners.md,
          ),
        ),
        onPressed: onPressed,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: wrapContent ? MainAxisSize.min : MainAxisSize.max,
          children: [
            if (prefixIcon != null) ...[
              prefixIcon!,
            ],
            wrapContent
                ? Text(
                    text,
                    style: style ??
                        TextStyles.btnStyle.copyWith(
                          color: AppColors.onAccent,
                        ),
                  )
                : Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        text,
                        style: style ??
                            TextStyles.btnStyle.copyWith(
                              color: AppColors.onAccent,
                            ),
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
