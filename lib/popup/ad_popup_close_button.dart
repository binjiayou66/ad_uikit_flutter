import 'package:ad_uikit_flutter/color/ad_color.dart';
import 'package:flutter/material.dart';

class ADPopUpCloseButton extends StatelessWidget {
  final VoidCallback? onTap;

  const ADPopUpCloseButton({this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        if (onTap == null) {
          Navigator.maybePop(context);
        } else {
          onTap!.call();
        }
      },
      child: Container(
        alignment: Alignment.center,
        width: 70,
        height: 44,
        child: Icon(
          Icons.close,
          color: ADColors.textBlack,
          size: 24,
        ),
      ),
    );
  }
}
