import 'package:flutter/material.dart';

class FacebookLogo extends StatelessWidget {
  final double size;
  final double fontSize;

  const FacebookLogo({
    super.key,
    this.size = 120,
    this.fontSize = 90,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        color: Color(0xFF1877F2),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          'f',
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            fontFamily: 'Times New Roman',
          ),
        ),
      ),
    );
  }
}