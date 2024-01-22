import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:peniremit/core/pin_keyboard/pin_keyboard.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/core/widgets/custom_pinput.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class TransactionPinWidget extends StatefulWidget {
  const TransactionPinWidget({
    super.key,
    required this.onChanged,
  });
  final Function(String) onChanged;

  @override
  State<TransactionPinWidget> createState() => _TransactionPinWidgetState();
}

class _TransactionPinWidgetState extends State<TransactionPinWidget> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Corners.lg),
        color: context.colorScheme.surface,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onPressed: () {
              Navigator.pop(context);
            },
            padding: EdgeInsets.zero,
            icon: Container(
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Corners.sm),
                color: context.colorScheme.background,
              ),
              child: const Icon(
                Icons.close_rounded,
                size: 16,
                color: Colors.white,
              ),
            ),
          ),
          Align(
            child: Text(
              AppStrings.enterTransactionPinTxt,
              style: TextStyles.t2.copyWith(
                fontSize: FontSizes.s20,
              ),
            ),
          ),
          //space vertically
          const Gap(10.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 10.0,
              ),
              IgnorePointer(
                child: CustomPinput(
                  controller: _controller,
                  length: 4,
                  obscuringText: true,
                  style: TextStyles.h4,
                  spacing: 20.0,
                  onCompleted: (value) {
                    FocusManager.instance.primaryFocus!.unfocus();
                    if (value != null && value.length == 4) {
                      widget.onChanged.call(value);
                    }
                  },
                ),
              ),
              //spacer
              const Gap(5.0),
              TextButton(
                onPressed: () {},
                child: Text(
                  AppStrings.forgotPinTxt,
                  style: TextStyles.h1.copyWith(
                    fontSize: FontSizes.s13,
                    color: AppColors.accent,
                  ),
                ),
              ),
              //space vertically
              const SizedBox(
                height: 5.0,
              ),
              PinKeyboard(
                length: 4,
                enableBiometric: true,
                iconBiometricColor: AppColors.accent,
                textColor: context.colorScheme.onPrimary,
                onChange: (pin) {
                  _controller.text = pin;
                  setState(() {});
                },
                onConfirm: (pin) {},
                onBiometric: () {},
              ),
            ],
          ),
          const Gap(30.0),
        ],
      ),
    );
  }
}
