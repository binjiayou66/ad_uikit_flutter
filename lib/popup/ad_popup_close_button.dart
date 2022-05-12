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
        child: Image.asset(
          'images/popup_close.png',
          package: 'doctor_base',
          width: 24,
          height: 24,
        ),
      ),
    );
  }
}
