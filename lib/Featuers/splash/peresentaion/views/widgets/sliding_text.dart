import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slideAnimation,
  });

  final Animation<Offset> slideAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slideAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slideAnimation,
            child: const Text(
              'Read free Books',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                wordSpacing: 4,
                letterSpacing: 4,
              ),
            ),
          );
        });
  }
}
