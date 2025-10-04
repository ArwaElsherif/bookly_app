import 'package:flutter/material.dart';

void initSlidingAnimation(
  TickerProvider vsync, {
  required AnimationController controller,
  required Animation<Offset> slidingAnimation,
  required Animation<Offset> imageAnimation,
}) {
  controller = AnimationController(
    vsync: vsync,
    duration: const Duration(milliseconds: 2000),
  );

  slidingAnimation = Tween<Offset>(
    begin: const Offset(0, 2),
    end: Offset.zero,
  ).animate(CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn));

  imageAnimation = Tween<Offset>(
    begin: const Offset(0, -2),
    end: Offset.zero,
  ).animate(CurvedAnimation(parent: controller, curve: Curves.easeOut));

  controller.forward();
}
