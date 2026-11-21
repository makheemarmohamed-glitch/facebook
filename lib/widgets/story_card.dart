import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String text;
  final bool isCreate;
  final Color? color;
  final String? imageUrl;

  const StoryCard({
    super.key,
    required this.text,
    this.isCreate = false,
    this.color,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: color ?? Colors.grey[300],
        borderRadius: BorderRadius.circular(15),
        image: (!isCreate && imageUrl != null)
            ? DecorationImage(image: NetworkImage(imageUrl!), fit: BoxFit.cover)
            : null,
      ),
      child: Stack(
        children: [
          if (isCreate) ...[
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Create a\nStory',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 70,
              left: 35,
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF1877F2),
                ),
                child: const Icon(Icons.add, color: Colors.white, size: 30),
              ),
            ),
          ],
        ],
      ),
    );
  }
}