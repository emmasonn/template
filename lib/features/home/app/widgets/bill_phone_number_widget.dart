import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/features/home/app/widgets/network_provider_widget.dart';
import 'package:peniremit/features/home/domain/entities/network_provider.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';

class BillPhoneNumberWidget extends StatefulWidget {
  const BillPhoneNumberWidget({
    super.key,
    this.initialValue,
    this.height,
    required this.hintText,
    required this.onChanged,
    required this.onSelectedNetworkProvider,
    required this.style,
  });
  final String hintText;
  final String? initialValue;
  final double? height;
  final Function(String) onChanged;
  final Function(
    NetworkProvider? auto,
    NetworkProvider? manuel,
  ) onSelectedNetworkProvider;
  final TextStyle style;

  @override
  State<BillPhoneNumberWidget> createState() => _BillPhoneNumberWidgetState();
}

class _BillPhoneNumberWidgetState extends State<BillPhoneNumberWidget> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _textEditingController.text = widget.initialValue ?? '';
  }

  @override
  Widget build(BuildContext context) {
    final autoDetectedProvider =
        NetworkProvider.decodeProvider(_textEditingController.text);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.phoneNumberLabel,
              style: widget.style.copyWith(
                fontSize: FontSizes.s14,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                AppStrings.chooseContactTxt,
                style: widget.style.copyWith(
                  fontSize: FontSizes.s12,
                  color: AppColors.accent,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: widget.height ?? 50.0,
          width: Sizes.btnWidthMd,
          child: TextFormField(
            controller: _textEditingController,
            style: widget.style,
            enabled: true,
            keyboardType: TextInputType.number,
            autocorrect: false,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp('[0-9]')),
              FilteringTextInputFormatter.deny(RegExp(r'^\+')),
              FilteringTextInputFormatter.deny(RegExp(r'^234')),
              LengthLimitingTextInputFormatter(12),
              FilteringTextInputFormatter.digitsOnly,
              // PhoneNumberInputFormatter(),
              // PhoneNumberSpaceFormatter(),
            ],
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(
                top: 16.0,
                bottom: 10,
              ),
              prefixIcon: NetworkProviderWidget(
                networkProvider: autoDetectedProvider,
                onChanged: (manuelDetectedProvider) {
                  widget.onSelectedNetworkProvider(
                    autoDetectedProvider,
                    manuelDetectedProvider,
                  );
                },
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: context.colorScheme.surface,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(Corners.md),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: context.colorScheme.surface,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(Corners.md),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: context.colorScheme.surface,
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
              log('onPressed: $value');
              final formattedPhone = NetworkProvider.formatNumber(
                value,
                onChanged: (number) {
                  _textEditingController.text = number;
                },
              );
              setState(() {
                if (formattedPhone.length == 11) {
                  widget.onChanged.call(formattedPhone);
                  FocusManager.instance.primaryFocus!.unfocus();
                } else {
                  widget.onChanged.call('');
                }
              });
            },
          ),
        ),
      ],
    );
  }
}
