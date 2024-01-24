import 'package:flutter/material.dart';


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
