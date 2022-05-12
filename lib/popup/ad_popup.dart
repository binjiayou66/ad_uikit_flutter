import 'package:flutter/material.dart';

import 'ad_popup_check_widget.dart';
import 'ad_popup_custom_widget.dart';
import 'ad_popup_picker_widget.dart';
import 'ad_popup_textfield_widget.dart';

class ADPopup {
  /// 弹起自定制Widget内容
  static void pop(
    BuildContext context, {
    String? leadingTitle,
    Widget? leading,
    VoidCallback? onPressLeading,
    String? title,
    String? tailTitle,
    Widget? tail,
    VoidCallback? onPressTail,
    Widget? content,
    double height = 330,
    bool isDismissible = true,
    bool enableDrag = true,
  }) {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
      ),
      context: context,
      isScrollControlled: true,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      builder: (BuildContext context) {
        return ADPopUpCustomWidget(
          leadingTitle: leadingTitle,
          leading: leading,
          onPressLeading: onPressLeading,
          title: title,
          tailTitle: tailTitle,
          tail: tail,
          onPressTail: onPressTail,
          content: content ?? Container(),
          height: height,
        );
      },
    );
  }

  /// 弹起文本输入框
  static void popTextField(
    BuildContext context, {
    String? leadingTitle,
    Widget? leading,
    VoidCallback? onPressLeading,
    String? title,
    String? tailTitle,
    Widget? tail,
    void Function(String?)? onPressTail,
    String? hintText,
    int? maxLength,
    String? content,
    TextInputType? textInputType,
    Brightness? keyboardAppearance,
    RegExp? regExp,
    String? regUnpassTips,
  }) {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
      ),
      context: context,
      isScrollControlled: true, // 解除屏幕1/2高度限制
      builder: (BuildContext context) {
        return ADPopUpTextFieldWidget(
          leadingTitle: leadingTitle,
          leading: leading,
          onPressLeading: onPressLeading,
          title: title,
          tailTitle: tailTitle,
          tail: tail,
          onPressTail: onPressTail,
          maxLength: maxLength,
          content: content,
          hintText: hintText,
          textInputType: textInputType,
          keyboardAppearance: keyboardAppearance,
          regExp: regExp,
          regUnpassTips: regUnpassTips,
        );
      },
    );
  }

  static void popPicker(
    BuildContext context, {
    String? leadingTitle,
    Widget? leading,
    VoidCallback? onPressLeading,
    String? title,
    String? tailTitle,
    Widget? tail,
    void Function(List<int>)? onPressTail,
    double height = 330,
    List<List<String>>? data,
    List<int>? initialIndexs,
    void Function(int section, int index, String title)? onValueChanged,
  }) {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
      ),
      context: context,
      builder: (BuildContext context) {
        return ADPopUpPickerWidget(
          leadingTitle: leadingTitle,
          leading: leading,
          onPressLeading: onPressLeading,
          title: title,
          tailTitle: tailTitle,
          tail: tail,
          onPressTail: onPressTail,
          height: height,
          data: data,
          initialIndex: initialIndexs,
          onValueChanged: (section, index, title) {
            if (onValueChanged != null) onValueChanged(section, index, title);
          },
        );
      },
    );
  }

  static void popChecker(
    BuildContext context, {
    String? leadingTitle,
    Widget? leading,
    VoidCallback? onPressLeading,
    String? title,
    String? tailTitle,
    Widget? tail,
    void Function(List<int>, List<String>)? onPressTail,
    double height = 330,
    List<String> data = const [],
    List<int> initialCheckedIndexs = const [0],
    int maxSelection = 1,
    int numbersPerRow = 4,
  }) {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
      ),
      context: context,
      builder: (BuildContext context) {
        return ADPopUpCheckWidget(
          leadingTitle: leadingTitle,
          leading: leading,
          onPressLeading: onPressLeading,
          title: title,
          tailTitle: tailTitle,
          tail: tail,
          onPressTail: onPressTail,
          height: height,
          data: data,
          initialCheckedIndexs: initialCheckedIndexs,
          maxSelection: maxSelection,
          numbersPerRow: numbersPerRow,
        );
      },
    );
  }
}
