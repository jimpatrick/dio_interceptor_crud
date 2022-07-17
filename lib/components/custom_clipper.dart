import 'package:flutter/material.dart';

class CustomBackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    const minSize = 250.0;

    final p1Diff = ((size.height - minSize) * 0.5).truncate();
    path.lineTo(0.0, 100.0);

    final controlPoint1 = Offset(size.width * 0.4, 50.0);
    final controlPoint2 = Offset(size.width * 0.6, 150);
    final endPoint = Offset(size.width, 100);
    /*
    path.quadraticBezierTo(
        controlPoint1.dx, controlPoint1.dy, endPoint1.dx, endPoint1.dy);
    */
    path.cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
        controlPoint2.dy, endPoint.dx, endPoint.dy);

    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
