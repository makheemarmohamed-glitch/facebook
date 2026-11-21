import 'package:flutter/material.dart';

class MetaBranding extends StatelessWidget {
  final double iconSize;
  final double textSize;

  const MetaBranding({
    super.key,
    this.iconSize = 40,
    this.textSize = 28,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'From',
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.all_inclusive, color: const Color(0xFF1877F2), size: iconSize),
            const SizedBox(width: 5),
            Text(
              'Meta',
              style: TextStyle(
                color: const Color(0xFF1877F2),
                fontSize: textSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}