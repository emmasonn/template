import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';

class AppIdentifierNumberField extends StatefulWidget {
  const AppIdentifierNumberField({
    super.key,
    this.initialValue,
    this.label,
    this.height,
    required this.hintText,
    required this.onChanged,
    required this.onBeneficiaryClicked,
    required this.style,
  });
  final String? label;
  final String hintText;
  final String? initialValue;
  final double? height;
  final Function(String) onChanged;
  final Function() onBeneficiaryClicked;
  final TextStyle style;

  @override
  State<AppIdentifierNumberField> createState() =>
      _AppIdentifierNumberFieldState();
}

class _AppIdentifierNumberFieldState extends State<AppIdentifierNumberField> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _textEditingController.text = widget.initialValue ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null) ...[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.label!,
                style: widget.style.copyWith(
                  fontSize: FontSizes.s14,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  AppStrings.selectBeneficiariesTxt,
                  style: widget.style.copyWith(
                    fontSize: FontSizes.s12,
                    color: AppColors.accent,
                  ),
                ),
              ),
            ],
          ),
        ],
        SizedBox(
          height: widget.height ?? 50.0,
          width: Sizes.btnWidthMd,
          child: TextFormField(
            clipBehavior: Clip.hardEdge,
            controller: _textEditingController,
            style: widget.style,
            enabled: true,
            keyboardType: TextInputType.number,
            autocorrect: false,
            inputFormatters: [
              LengthLimitingTextInputFormatter(12),
              FilteringTextInputFormatter.digitsOnly,
              // PhoneNumberInputFormatter(),
              // PhoneNumberSpaceFormatter(),
            ],
            decoration: InputDecoration(
              fillColor: context.colorScheme.surface,
              filled: true,
              contentPadding: const EdgeInsets.only(
                top: 16.0,
                bottom: 10,
                left: 16.0,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: context.onSurfaceVt,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(Corners.md),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: context.onSurfaceVt,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(Corners.md),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: context.onSurfaceVt,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(Corners.md),
              ),
              hintText: widget.hintText,
              hintStyle: widget.style.copyWith(
                fontSize: FontSizes.s14,
                color: context.colorScheme.onSurface,
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  _textEditingController.clear();
                },
                icon: Icon(
                  Icons.cancel,
                  size: 18,
                  color: context.dividerColor,
                ),
              ),
            ),
            onChanged: (value) {
              widget.onChanged.call(value);
            },
          ),
        ),
      ],
    );
  }
}
