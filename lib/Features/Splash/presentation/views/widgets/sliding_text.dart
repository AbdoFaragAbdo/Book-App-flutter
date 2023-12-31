import 'package:flutter/material.dart';

class slidingText extends StatelessWidget {
  const slidingText({
    Key? key,
    required this.slidingAnimation,
  }) : super(key: key);

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: const Text(
              "Read Free Books",
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
