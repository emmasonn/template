import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:peniremit/core/icon_fonts/peniremit_font.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/features/home/domain/entities/beneficiary.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_styles.dart';

class ElectricityBeneficiaryWidget extends StatelessWidget {
  const ElectricityBeneficiaryWidget({
    super.key,
    required this.beneficiaries,
    required this.onPressed,
  });
  final List<Beneficiary> beneficiaries;
  final Function(Beneficiary) onPressed;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 5, //beneficiaries.length,
      itemBuilder: (BuildContext context, index) {
        // final beneficiary = beneficiaries[index];
        return ElectricityBeneficiaryItem(
          beneficiary: Beneficiary(
              date: DateTime.now().toString(),
              number: '7034894944',
              name: 'Emmanuel Nnamani'),
          onPressed: () {
            // onPressed.call(beneficiary);
          },
        );
      },
    );
  }
}

class ElectricityBeneficiaryItem extends StatelessWidget {
  const ElectricityBeneficiaryItem({
    super.key,
    required this.beneficiary,
    required this.onPressed,
  });
  final Beneficiary beneficiary;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onPressed.call();
      },
      leading: const CircleAvatar(
        radius: 20.0,
        child: Icon(
          PeniremitIcon.electricity,
          color: AppColors.accentLight,
        ),
      ),
      title: beneficiary.name.isEmptyOrNull
          ? null
          : Text(
              beneficiary.name!,
              style: TextStyles.body1.copyWith(
                color: context.colorScheme.onSurface,
              ),
            ),
      subtitle: Text(
        beneficiary.number,
        style: TextStyles.body1.copyWith(
          color: context.colorScheme.onPrimary,
        ),
      ),
    );
  }
}
