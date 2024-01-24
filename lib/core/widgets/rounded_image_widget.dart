import 'package:flutter/material.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/resources/app_assets.dart';

class RoundedImageWidget extends StatelessWidget {
  const RoundedImageWidget({
    super.key,
    required this.radius,
  });
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: CircleAvatar(
        backgroundColor: context.colorScheme.background,
        radius: radius,
        child: Image.asset(
          AppAssets.convasPng,
          fit: BoxFit.cover,
          width: radius,
        ),
      ),
    );
  }
}
