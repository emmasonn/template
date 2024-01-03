import 'package:flutter/material.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/core/widgets/custom_app_bar.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class MainScaffoldView extends StatefulWidget {
  const MainScaffoldView({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  State<MainScaffoldView> createState() => _MainScaffoldViewState();
}

class _MainScaffoldViewState extends State<MainScaffoldView> {
  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
