import 'package:ad_uikit_flutter/color/ad_color.dart';
import 'package:ad_uikit_flutter/font/ad_font_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ad_popup_custom_widget.dart';

class ADPopUpTextFieldWidget extends StatefulWidget {
  final String? leadingTitle;
  final Widget? leading;
  final VoidCallback? onPressLeading;
  final String? title;
  final String? tailTitle;
  final Widget? tail;
  final void Function(String?)? onPressTail;
  final String? hintText;
  final int? maxLength;
  final String? content;
  final TextInputType? textInputType;
  final Brightness? keyboardAppearance;
  final RegExp? regExp;
  final String? regUnpassTips;

  const ADPopUpTextFieldWidget({
    this.leadingTitle,
    this.leading,
    this.onPressLeading,
    this.title,
    this.tailTitle,
    this.tail,
    this.onPressTail,
    this.hintText,
    this.maxLength,
    this.content,
    this.textInputType,
    this.keyboardAppearance,
    this.regExp,
    this.regUnpassTips,
    Key? key,
  }) : super(key: key);

  @override
  _ADPopUpTextFieldWidgetState createState() => _ADPopUpTextFieldWidgetState();
}

class _ADPopUpTextFieldWidgetState extends State<ADPopUpTextFieldWidget> {
  final FocusNode _focusNode = FocusNode();
  String _text = '';
  TextEditingController? _textfieldController;
  bool _isValid = true;

  @override
  void initState() {
    super.initState();
    _textfieldController = TextEditingController();
    if (widget.content != null) {
      _textfieldController!.text = widget.content!;
      _text = widget.content ?? '';
    }
    Future.delayed(const Duration(seconds: 0), () {
      FocusScope.of(context).requestFocus(_focusNode);
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.of(context).viewInsets.bottom;

    return ADPopUpCustomWidget(
      leadingTitle: widget.leadingTitle,
      leading: widget.leading,
      onPressLeading: widget.onPressLeading,
      title: widget.title,
      tailTitle: widget.tailTitle,
      tail: widget.tail,
      onPressTail: () {
        if (widget.regExp != null) {
          final isValid = widget.regExp!.hasMatch(_text.trim());
          if (!isValid) {
            setState(() {
              _isValid = false;
            });
            return;
          } else {
            if (_isValid == false) {
              setState(() {
                _isValid = true;
              });
            }
          }
        }
        if (widget.onPressTail != null) widget.onPressTail!(_text);
      },
      height: 140 + bottom + (_isValid ? 0 : 26),
      content: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: ADColors.backgroundDark,
                borderRadius: BorderRadius.circular(4),
              ),
              child: TextField(
                controller: _textfieldController,
                focusNode: _focusNode,
                maxLines: 1,
                style: const TextStyle(
                  fontSize: ADFontSize.content2,
                  color: ADColors.textMain,
                ),
                onChanged: (text) => _text = text,
                onSubmitted: (_) {
                  Navigator.maybePop(context);
                  if (widget.onPressTail != null) widget.onPressTail!(_text);
                },
                inputFormatters: <TextInputFormatter>[
                  LengthLimitingTextInputFormatter(widget.maxLength ?? 50)
                ],
                keyboardType: widget.textInputType ?? TextInputType.text,
                keyboardAppearance:
                    widget.keyboardAppearance ?? Brightness.light,
                decoration: InputDecoration(
                  hintText: widget.hintText ?? '请填写',
                  hintStyle: const TextStyle(
                    fontSize: ADFontSize.content2,
                    color: ADColors.textInfo,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            if (_isValid == false)
              Container(
                margin: const EdgeInsets.only(top: 12),
                child: Text(
                  widget.regUnpassTips ?? '',
                  style: TextStyle(
                    fontSize: ADFontSize.content2,
                    color: ADColors.fromValue(0xFFFF4E47),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
