import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// Solid tab bar indicator.
class SolidIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback onChanged]) {
    return _SolidIndicatorPainter(this, onChanged);
  }
}

class _SolidIndicatorPainter extends BoxPainter {
  final SolidIndicator decoration;

  _SolidIndicatorPainter(this.decoration, VoidCallback onChanged)
      : assert(decoration != null),
        super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration != null);
    assert(configuration.size != null);

    final Rect rect = offset & configuration.size;
    final Paint paint = Paint();
    paint.color = Colors.red;
    paint.style = PaintingStyle.fill;
    canvas.drawRect(rect, paint);
  }
}
