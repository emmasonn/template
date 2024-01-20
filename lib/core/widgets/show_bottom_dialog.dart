import 'package:flutter/material.dart' as ml;

void showSimpleBottomDialog(
  ml.BuildContext context, {
  required ml.Widget child,
}) {
  // if (Platform.isIOS) {
  //   showCupertinoDialog(
  //     barrierDismissible: false,
  //     context: context,
  //     builder: (context) => child,
  //   );
  // } else {
  ml.showModalBottomSheet(
    context: context,
    // isDismissible: false,
    enableDrag: false,
    isScrollControlled: true,
    builder: (context) => child,
  );
  // }
}
