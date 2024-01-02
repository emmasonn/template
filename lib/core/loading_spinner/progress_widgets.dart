import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:peniremit/core/loading_spinner/spin_fading_circle.dart';
import 'package:peniremit/resources/app_colors.dart';

class ProgressWidgets {
  static final fadingCircle = SpinKitRing(
    color: AppColors.accent,
  );
  static final ok = SpinFadingCircle(color: AppColors.accent);
}

Future<void> showProgressDialog(
  BuildContext context, {
  bool? dismissible,
  Colors? colors,
}) {
  return showDialog(
    context: context,
    barrierColor: Colors.white12,
    barrierDismissible: dismissible ?? false,
    builder: (context) => ProgressWidgets.ok,
  );
}
