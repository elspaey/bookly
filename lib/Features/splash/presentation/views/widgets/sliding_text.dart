import 'package:flutter/material.dart';

class slidingText extends StatelessWidget {
  const slidingText({
    super.key,
    required Animation<Offset> animation,
  }) : _animation = animation;

  final Animation<Offset> _animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animation,
        builder: (context, _) {
          return SlideTransition(
            position: _animation,
            child: const Text(
              "Read Free Books",
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
