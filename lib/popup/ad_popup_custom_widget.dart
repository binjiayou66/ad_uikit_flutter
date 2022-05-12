import 'package:ad_uikit_flutter/button/ad_plain_button.dart';
import 'package:ad_uikit_flutter/color/ad_color.dart';
import 'package:ad_uikit_flutter/font/ad_font_size.dart';
import 'package:ad_uikit_flutter/font/ad_font_weight.dart';
import 'package:flutter/material.dart';

class ADPopUpCustomWidget extends StatelessWidget {
  final String? leadingTitle;
  final Widget? leading;
  final VoidCallback? onPressLeading;
  final String? title;
  final String? tailTitle;
  final Widget? tail;
  final void Function()? onPressTail;
  final Widget content;
  final double? height;

  const ADPopUpCustomWidget({
    this.leading,
    this.leadingTitle,
    this.onPressLeading,
    this.title,
    this.tail,
    this.tailTitle,
    this.onPressTail,
    required this.content,
    this.height = 330,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: ADColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
      ),
      height: height,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              leading ??
                  ADPlainButton(
                    width: 70,
                    text: leadingTitle ?? '',
                    textStyle: const TextStyle(fontSize: ADFontSize.content1),
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    onPressed: () {
                      if (leadingTitle != null) {
                        Navigator.maybePop(context);
                        if (onPressLeading != null) onPressLeading!();
                      }
                    },
                  ),
              Expanded(
                child: Text(
                  title ?? '',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: ADFontSize.title2,
                    color: ADColors.textMain,
                    fontWeight: ADFontWeight.bold,
                  ),
                ),
              ),
              tail ??
                  ADPlainButton(
                    width: 70,
                    text: tailTitle ?? '',
                    textStyle: TextStyle(
                      fontSize: ADFontSize.content1,
                      color: ADColors.fromValue(0xFF1E8DFF),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    onPressed: () {
                      if (onPressTail != null) onPressTail!();
                    },
                  ),
            ],
          ),
          const SizedBox(height: 16),
          Expanded(
            child: SafeArea(child: content),
          ),
        ],
      ),
    );
  }
}
