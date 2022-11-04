import 'package:flutter/material.dart';

class HomeBackgroundWidget extends StatelessWidget {
  final double shapeSize;
  final Color colorsA;
  final Color colorsB;

  const HomeBackgroundWidget({
    Key? key,
    required this.shapeSize,
    required this.colorsA,
    required this.colorsB,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipper(),
      child: Container(
        height: MediaQuery.of(context).size.height * shapeSize,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              colorsA,
              colorsB,
            ],
          ),
        ),
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path = Path();
    path.lineTo(0, 0);
    path.cubicTo(0, 0, 0, size.height * 0.9, 0, size.height * 0.9);
    path.cubicTo(size.width * 0.13, size.height, size.width * 0.44,
        size.height * 1.03, size.width * 0.58, size.height * 0.97);
    path.cubicTo(size.width * 0.77, size.height * 0.89, size.width * 0.86,
        size.height * 0.91, size.width, size.height * 0.95);
    path.cubicTo(size.width, size.height * 0.95, size.width, 0, size.width, 0);
    path.cubicTo(size.width, 0, 0, 0, 0, 0);
    path.cubicTo(0, 0, 0, 0, 0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
