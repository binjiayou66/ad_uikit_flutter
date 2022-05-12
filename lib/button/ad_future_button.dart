import 'dart:async';

import 'package:flutter/material.dart';

class ADFutureButton extends StatefulWidget {
  final Widget child;
  final dynamic Function()? onPressed;
  final WidgetBuilder? processingBuilder;
  final Duration? switchDuration;
  final double? width;
  final double? height;

  const ADFutureButton({
    Key? key,
    required this.child,
    required this.onPressed,
    this.processingBuilder,
    this.switchDuration,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  _ADFutureButtonState createState() => _ADFutureButtonState();
}

class _ADFutureButtonState extends State<ADFutureButton> {
  bool processing = false;

  @override
  Widget build(BuildContext context) {
    final child = (processing && widget.processingBuilder != null)
        ? widget.processingBuilder!(context)
        : widget.child;
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      child: Container(
        width: widget.width,
        height: widget.height,
        alignment: Alignment.center,
        child: AnimatedSwitcher(
          child: child,
          duration: widget.switchDuration ?? const Duration(milliseconds: 500),
        ),
      ),
      onTapUp: (processing || widget.onPressed == null)
          ? null
          : (_) {
              final result = widget.onPressed!();
              if (result is Future) {
                result.whenComplete(() {
                  setState(() {
                    processing = false;
                  });
                });
                setState(() {
                  processing = true;
                });
              }
            },
    );
  }
}
