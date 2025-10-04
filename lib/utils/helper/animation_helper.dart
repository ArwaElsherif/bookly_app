import 'package:flutter/material.dart';

class AnimationBundle {
  final AnimationController controller;
  final Animation<Offset> slidingAnimation;
  final Animation<Offset> imageAnimation;

  AnimationBundle({
    required this.controller,
    required this.slidingAnimation,
    required this.imageAnimation,
  });
}

AnimationBundle initSlidingAnimation(TickerProvider vsync) {
  final controller = AnimationController(
    vsync: vsync,
    duration: const Duration(milliseconds: 2000),
  );

  final slidingAnimation = Tween<Offset>(
    begin: const Offset(0, 2),
    end: Offset.zero,
  ).animate(
    CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn),
  );

  final imageAnimation = Tween<Offset>(
    begin: const Offset(0, -2),
    end: Offset.zero,
  ).animate(
    CurvedAnimation(parent: controller, curve: Curves.easeOut),
  );

  controller.forward();

  return AnimationBundle(
    controller: controller,
    slidingAnimation: slidingAnimation,
    imageAnimation: imageAnimation,
  );
}
