import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:peniremit/core/utils/country.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/core/utils/phone_number_formatter.dart';
import 'package:peniremit/navigation/app_screen_paths.dart';
import 'package:peniremit/navigation/nav_utils.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';

class PhoneNumberField extends StatefulWidget {
  const PhoneNumberField({
    Key? key,
    required this.hintText,
    required this.label,
    this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.textCapitalization = TextCapitalization.none,
    this.keyboardType,
    this.validator,
    this.obscureText = false,
    this.isEditable,
    this.outline,
    this.elevate,
    this.helperText,
    this.initialValue,
    this.maxLine,
    required this.onCountrySelected,
    required this.onChanged,
    this.style,
  }) : super(key: key);
  final TextEditingController? controller;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String label;
  final TextCapitalization? textCapitalization;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? Function(String?)? validator;
  final bool? isEditable;
  final bool? elevate;
  final bool? outline;
  final String? helperText;
  final String? initialValue;
  final Function(String?) onChanged;
  final Function(Country?) onCountrySelected;

  final int? maxLine;
  final TextStyle? style;

  @override
  State<PhoneNumberField> createState() => _PhoneNumberFieldState();
}

class _PhoneNumberFieldState extends State<PhoneNumberField> {
  String? currentValue;

  Country selectedCountry = const Country(
    asset: "assets/flags/ng.png",
    dialingCode: "234",
    isoCode: "NG",
    name: "Nigeria",
  );

  @override
  void initState() {
    super.initState();
    currentValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: widget.style?.copyWith(
            fontSize: FontSizes.s14,
          ),
        ),
        //vertical spacer
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 50.0,
          child: TextFormField(
            style: widget.style,
            enabled: true,
            keyboardType: TextInputType.number,
            autocorrect: false,
            initialValue: currentValue,
            maxLines: widget.maxLine,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp('[0-9]')),
              LengthLimitingTextInputFormatter(12),
              FilteringTextInputFormatter.digitsOnly,
              PhoneNumberSpaceFormatter(),
            ],
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              filled: true,
              fillColor: context.colorScheme.surface,
              prefixIcon: GestureDetector(
                onTap: () {
                  //navigate to select country
                  // context.push(
                  //   AppScreenPaths.countryPath,
                  //   extra: NavParamWrapper<Country>(
                  //     callBack: (country) {
                  //       widget.onCountrySelected.call(country);
                  //       setState(() {
                  //         selectedCountry = country!;
                  //       });
                  //     },
                  //   ),
                  // );
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 8.0,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '+${selectedCountry.dialingCode}',
                        style: widget.style,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      // const Icon(
                      //   Icons.keyboard_arrow_down,
                      //   color: AppColors.surface500,
                      //   size: 20,
                      // ),
                      SizedBox(
                        height: 50,
                        width: 5.0,
                        child: VerticalDivider(
                          color: context.onSurfaceVt,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: context.onSurfaceVt,
                  width: 1.0,
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
              helperText: widget.helperText,
              hintText: widget.hintText,
              hintStyle: widget.style?.copyWith(
                fontSize: FontSizes.s14,
                color: context.colorScheme.onSurface,
              ),
              suffixIcon: widget.suffixIcon,
            ),
            onChanged: widget.onChanged,
          ),
        ),
      ],
    );
  }
}
