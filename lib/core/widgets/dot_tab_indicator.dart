import 'package:flutter/material.dart';

class DotTabIndicator extends Decoration {
  final Color color;
  final double radius;

  const DotTabIndicator({
    required this.color,
    this.radius = 3.0,
  });

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _DotTabIndicatorPainter(color, radius);
  }
}

class _DotTabIndicatorPainter extends BoxPainter {
  final Color color;
  final double radius;
  _DotTabIndicatorPainter(this.color, this.radius);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final rect = Rect.fromCircle(
      center: Offset(offset.dx + configuration.size!.width / 2,
          configuration.size!.height - radius * 0.05),
      radius: radius,
    );

    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    canvas.drawCircle(rect.center, radius, paint);
  }
}
