import 'package:ad_uikit_flutter/text/ad_text.dart';
import 'package:ad_uikit_flutter/utils/debounce_util.dart';
import 'package:flutter/material.dart';

class ADPlainButton extends StatelessWidget {
  final String? text;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final dynamic Function()? onPressed;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final Decoration? decoration;
  final bool? debounce;

  const ADPlainButton({
    Key? key,
    this.text,
    this.backgroundColor,
    this.textStyle,
    this.onPressed,
    this.width,
    this.height,
    this.decoration,
    this.padding,
    this.debounce,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: width,
      height: height,
      alignment: Alignment.center,
      decoration: decoration ?? BoxDecoration(color: backgroundColor),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        child: Container(
          width: width,
          height: height,
          alignment: Alignment.center,
          child: ADText(
            text ?? '',
            style: textStyle,
          ),
        ),
        onTap: (debounce ?? true)
            ? debounceAsync(hashCode, () async {
                await onPressed?.call();
              })
            : () {
                onPressed?.call();
              },
      ),
    );
  }
}
