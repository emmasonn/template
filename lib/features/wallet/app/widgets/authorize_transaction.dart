import 'package:flutter/material.dart';
import 'package:peniremit/core/security/biometrics_authentication.dart';
import 'package:peniremit/core/utils/enum_constants.dart';
import 'package:peniremit/core/widgets/show_bottom_dialog.dart';
import 'package:peniremit/features/wallet/app/widgets/transaction_pin_widget.dart';

class AuthorizeTransaction {
  static void useBiometric(
    BuildContext context, {
    required void Function(ConfirmationMethod, {String? pin}) onConfirm,
  }) {
    //use biometrics(faceId or fingerprint) for confirmation
    authenticateWithBiometrics(
      onPressed: (auth) {
        onConfirm.call(ConfirmationMethod.biometric);
      },
      onCancel: () {
        //use pin for confirmation
        showSimpleBottomDialog(
          context,
          child: TransactionPinWidget(
            onChanged: (pin) {
              onConfirm.call(
                ConfirmationMethod.pin,
                pin: pin,
              );
              Navigator.pop(context);
            },
          ),
        );
      },
    );
  }
}
