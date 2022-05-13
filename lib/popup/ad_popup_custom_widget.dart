import 'package:ad_uikit_flutter/button/ad_plain_button.dart';
import 'package:ad_uikit_flutter/color/ad_color.dart';
import 'package:ad_uikit_flutter/text_style/ad_text_style.dart';
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
                    textStyle: ADTextStyle.content1Black(),
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
                  style: ADTextStyle.title2BlackBold(),
                ),
              ),
              tail ??
                  ADPlainButton(
                    width: 70,
                    text: tailTitle ?? '',
                    textStyle: ADTextStyle.content1Primary(),
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
