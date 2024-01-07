import 'package:flutter/material.dart';
import 'package:peniremit/core/utils/extension_util.dart';

// enter the opacity degree 0 - 1, represent 0 - 100
class HDividerWidget extends StatelessWidget {
  const HDividerWidget({
    super.key,
    this.opacity,
  });
  final double? opacity;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1,
      color: context.colorScheme.onSurface.withOpacity(
        opacity ?? 0.2,
      ),
    );
  }
}
