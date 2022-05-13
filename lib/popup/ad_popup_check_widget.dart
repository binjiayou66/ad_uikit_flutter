import 'package:ad_uikit_flutter/button/ad_plain_button.dart';
import 'package:ad_uikit_flutter/color/ad_color.dart';
import 'package:ad_uikit_flutter/config/ad_config.dart';
import 'package:flutter/material.dart';

import 'ad_popup_custom_widget.dart';

class ADPopUpCheckWidget extends StatefulWidget {
  final String? leadingTitle;
  final Widget? leading;
  final VoidCallback? onPressLeading;
  final String? title;
  final String? tailTitle;
  final Widget? tail;
  final void Function(List<int>, List<String>)? onPressTail;
  final double? height;
  final List<String> data;
  final int maxSelection;
  final List<int>? initialCheckedIndexs;
  final int numbersPerRow;

  const ADPopUpCheckWidget({
    this.leadingTitle,
    this.leading,
    this.onPressLeading,
    this.title,
    this.tailTitle,
    this.tail,
    this.onPressTail,
    this.height,
    this.data = const [],
    this.maxSelection = 1,
    this.initialCheckedIndexs,
    this.numbersPerRow = 4,
    Key? key,
  }) : super(key: key);

  @override
  _ADPopUpCheckWidgetState createState() => _ADPopUpCheckWidgetState();
}

class _ADPopUpCheckWidgetState extends State<ADPopUpCheckWidget> {
  final List<int> _checkedIndexs = [];
  final List<String> _checkedTitles = [];

  @override
  void initState() {
    super.initState();

    for (var i = 0; i < widget.initialCheckedIndexs!.length; i++) {
      if (widget.initialCheckedIndexs![i] < widget.data.length) {
        _checkedIndexs.add(widget.initialCheckedIndexs![i]);
        _checkedTitles.add(widget.data[widget.initialCheckedIndexs![i]]);
      }
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
        widget.onPressTail?.call(_checkedIndexs, _checkedTitles);
      },
      height: widget.height,
      content: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: _contentBuilder(),
      ),
    );
  }

  Widget _contentBuilder() {
    final rowCount = (widget.data.length / widget.numbersPerRow).ceil();
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: <Widget>[
        Table(
          children: [
            for (var i = 0; i < rowCount; i++)
              TableRow(
                children: [
                  for (var j = 0; j < widget.numbersPerRow; j++)
                    i * widget.numbersPerRow + j < widget.data.length
                        ? _buttonAtIndex(i * widget.numbersPerRow + j)
                        : Container(),
                ],
              ),
          ],
        )
      ],
    );
  }

  Widget _buttonAtIndex(int index) {
    final checked = _checkedIndexs.contains(index);
    final isRowLast = ((index + 1) % widget.numbersPerRow) == 0;
    return Container(
      padding: EdgeInsets.only(right: isRowLast ? 0 : 8, bottom: 8),
      child: Stack(
        children: <Widget>[
          ADPlainButton(
            text: widget.data[index],
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(
                width: checked ? 1 : 0.5,
                color: checked ? ADConfig.primary : ADColors.divider,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            onPressed: () {
              if (widget.maxSelection == 1) {
                _checkedIndexs.clear();
                _checkedIndexs.add(index);
                _checkedTitles.clear();
                _checkedTitles.add(widget.data[index]);
                setState(() {});
              } else {
                if (_checkedIndexs.contains(index) &&
                    _checkedIndexs.length > 1) {
                  _checkedIndexs.remove(index);
                  _checkedTitles.remove(widget.data[index]);
                  setState(() {});
                  return;
                }
                if (_checkedIndexs.length >= widget.maxSelection) {
                  _checkedIndexs.removeAt(0);
                  _checkedTitles.removeAt(0);
                }
                _checkedIndexs.add(index);
                _checkedTitles.add(widget.data[index]);
                setState(() {});
              }
            },
          ),
          if (checked)
            Icon(
              Icons.check_box,
              size: 10,
              color: ADConfig.primary,
            ),
        ],
        alignment: Alignment.bottomRight,
      ),
    );
  }
}
