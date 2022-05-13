import 'package:ad_uikit_flutter/color/ad_color.dart';
import 'package:ad_uikit_flutter/text/ad_text.dart';
import 'package:flutter/cupertino.dart';

import 'ad_popup_custom_widget.dart';

class ADPopUpPickerWidget extends StatefulWidget {
  final String? leadingTitle;
  final Widget? leading;
  final VoidCallback? onPressLeading;
  final String? title;
  final String? tailTitle;
  final Widget? tail;
  final void Function(List<int>)? onPressTail;
  final double? height;
  final List<List<String>>? data;
  final List<int>? initialIndex;
  final void Function(int, int, String)? onValueChanged;

  const ADPopUpPickerWidget({
    this.leadingTitle,
    this.leading,
    this.onPressLeading,
    this.title,
    this.tailTitle,
    this.tail,
    this.onPressTail,
    this.height,
    required this.data,
    this.initialIndex,
    this.onValueChanged,
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ADPopUpPickerWidgetState();
}

class _ADPopUpPickerWidgetState extends State<ADPopUpPickerWidget> {
  final List<FixedExtentScrollController> _scrollCtrlList = [];
  final List<int> _pickedIndexs = [];

  @override
  initState() {
    super.initState();

    for (var i = 0; i < widget.data!.length; i++) {
      final data = widget.data![i];
      var initialIndex = 0;
      if (widget.initialIndex != null && widget.initialIndex!.length > i) {
        initialIndex = widget.initialIndex![i];
        initialIndex =
            initialIndex < data.length ? initialIndex : data.length - 1;
      }
      _pickedIndexs.add(initialIndex);
      _scrollCtrlList
          .add(FixedExtentScrollController(initialItem: initialIndex));
    }
  }

  @override
  Widget build(BuildContext context) {
    return ADPopUpCustomWidget(
      leadingTitle: widget.leadingTitle,
      leading: widget.leading,
      onPressLeading: widget.onPressLeading,
      title: widget.title,
      tailTitle: widget.tailTitle,
      tail: widget.tail,
      onPressTail: () {
        if (widget.onPressTail != null) widget.onPressTail!(_pickedIndexs);
      },
      height: widget.height,
      content: _renderPickerWidget(),
    );
  }

  Widget _renderPickerWidget() {
    List<Widget> pickers = <Widget>[];
    for (var i = 0; i < widget.data!.length; i++) {
      Widget pickerColumn = _renderPickerColumnComponent(
        scrollCtrl: _scrollCtrlList[i],
        data: widget.data![i],
        valueChanged: (index) {
          _pickedIndexs[i] = index;
          if (widget.onValueChanged != null) {
            widget.onValueChanged!(i, index, widget.data![i][index]);
          }
        },
      );
      pickers.add(pickerColumn);
    }
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, children: pickers);
  }

  Widget _renderPickerColumnComponent({
    required FixedExtentScrollController scrollCtrl,
    required List<String> data,
    required ValueChanged<int> valueChanged,
  }) {
    return Expanded(
      flex: 1,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: const BoxDecoration(color: ADColors.white),
        child: CupertinoPicker.builder(
          backgroundColor: ADColors.white,
          scrollController: scrollCtrl,
          itemExtent: 44,
          onSelectedItemChanged: valueChanged,
          childCount: data.length,
          itemBuilder: (context, index) =>
              _renderPickerItemComponent(data[index]),
        ),
      ),
    );
  }

  Widget _renderPickerItemComponent(String title) {
    return Container(
      height: 44,
      alignment: Alignment.center,
      child: ADText.content1Black(title),
    );
  }
}
