
import 'dart:math';

import 'package:flutter/material.dart';

/// 🔄 Rotating dotted icon
class RotatingDottedIcon extends StatefulWidget {
  final int trigger;

  const RotatingDottedIcon({super.key, required this.trigger});

  @override
  State<RotatingDottedIcon> createState() => _RotatingDottedIconState();
}

class _RotatingDottedIconState extends State<RotatingDottedIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> rotation;
  late Animation<double> scale;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    rotation = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic),
    );

    scale = Tween(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutBack),
    );
  }

  @override
  void didUpdateWidget(covariant RotatingDottedIcon oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.trigger != widget.trigger) {
      _controller.forward(from: 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return Transform.rotate(
          angle: rotation.value * 2 * pi,
          child: Transform.scale(
            scale: scale.value,
            child: child,
          ),
        );
      },
      child: Container(
        width: 18,
        height: 18,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Color(0xFF8E8BFF),
              blurRadius: 8,
              spreadRadius: -2,
            )
          ],
        ),
        child: CustomPaint(
          painter: DottedCirclePainter(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

/// 🎨 Painter
class DottedCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final radius = size.width / 2;
    const dashWidth = 3.0;
    const dashSpace = 6.0;

    for (double i = 0; i < 2 * pi; i += (dashWidth + dashSpace) / radius) {
      canvas.drawArc(
        Rect.fromCircle(center: Offset(radius, radius), radius: radius),
        i,
        dashWidth / radius,
        false,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}