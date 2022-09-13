import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:keyboard_attachable/src/animation/keyboard_animation_controller.dart';

class IOSKeyboardAnimationController implements KeyboardAnimationController {
  IOSKeyboardAnimationController({required TickerProvider vsync})
      : _controller = AnimationController(
          vsync: vsync,
          duration: const Duration(milliseconds: 250),
        );

  final AnimationController _controller;

  @override
  Animation<double> get animation => CurvedAnimation(
        parent: _controller,
        curve: Curves.linear,
      );

  @override
  void dispose() => _controller.dispose();

  @override
  TickerFuture forward() => _controller.forward();

  @override
  TickerFuture reverse() => _controller.reverse();
}
