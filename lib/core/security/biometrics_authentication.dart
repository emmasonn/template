import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:local_auth_android/local_auth_android.dart';
import 'package:local_auth_ios/local_auth_ios.dart';

Future<void> authenticateWithBiometrics({
  required Function(
    LocalAuthentication,
  ) onPressed,
  required Function() onCancel,
}) async {
  final LocalAuthentication auth = LocalAuthentication();

  try {
    final authenticated = await auth.authenticate(
      localizedReason: AppStrings.confirmPaymentTxt,
      authMessages: const [
        AndroidAuthMessages(
          signInTitle: AppStrings.verifyFingerPrintTxt,
          biometricHint: '',
          cancelButton: AppStrings.usePinConfirmationTxt,
        ),
        IOSAuthMessages(
          cancelButton: AppStrings.usePinConfirmationTxt,
        ),
      ],
      options: const AuthenticationOptions(
        useErrorDialogs: false,
        stickyAuth: true,
        biometricOnly: true,
      ),
    );

    //called functon lamda
    if (authenticated) {
      onPressed.call(auth);
    } else {
      //use pin instead
      onCancel.call();
    }
  } on PlatformException {
    //call on call
    onCancel.call();
  }
}
