import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:pinput/pinput.dart';

class CustomPinput extends StatelessWidget {
  const CustomPinput({
    super.key,
    this.obscuringText = false,
    required this.length,
    required this.style,
    required this.onCompleted,
    this.controller,
  });
  final Function(String?) onCompleted;
  final bool obscuringText;
  final int length;
  final TextStyle style;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Pinput(
      controller: controller,
      length: length,
      obscuringCharacter: '*',
      obscureText: obscuringText,
      closeKeyboardWhenCompleted: true,
      separatorBuilder: (index) => const SizedBox(width: 5),
      defaultPinTheme: PinTheme(
        textStyle: style,
        constraints: const BoxConstraints(
          minWidth: 48,
          minHeight: 48,
          maxWidth: 48,
          maxHeight: 48,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            Corners.sm,
          ),
          border: Border.all(
            color: context.colorScheme.onSurface,
          ),
        ),
      ),
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      onCompleted: onCompleted,
    );
  }
}
