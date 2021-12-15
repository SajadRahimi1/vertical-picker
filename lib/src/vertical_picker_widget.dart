library vertical_picker;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerticalPicker extends StatelessWidget {
  const VerticalPicker(
      {Key? key,
      required this.items,
      required this.onSelectedChanged,
      required this.itemHeight,
      this.borderColor,
      this.borderThickness,
      this.leftMargin,
      this.loop,
      this.rightMargin})
      : assert(itemHeight > 0),
        super(key: key);

  /// List of widget for otem in picker that user could picker each item
  final List<Widget> items;

  /// When selected item changed this fuction return index of item that user selected it
  final void Function(int)? onSelectedChanged;

  /// All item will be given the [BoxConstraints] to match this exact height. Must not be null and must be positive
  final double itemHeight;

  /// Color of line that are in top and bottom of each item
  /// default value is #919DD9
  final Color? borderColor;

  /// Thickness of line that are in top and bottom of each item
  /// default value is 2.2
  final double? borderThickness;

  /// Right margin of line that are in top and bottom of each item
  /// default value is 0
  final double? rightMargin;

  /// Left margin of line that are in top and bottom of each item
  /// default value is 0
  final double? leftMargin;

  /// If it's true when scroll of picker arrive to end, first item apears as next item (but still index is 0)
  final bool? loop;
  @override
  Widget build(BuildContext context) {
    return CupertinoPicker(
      // items that you want shown in [VerticalPicker] that client could select it
      children: items,

      // An optional callback when item selected in [VerticalPicker] changed
      onSelectedItemChanged: onSelectedChanged,

      // The uniform height of all items
      itemExtent: itemHeight,

      looping: loop ?? false,

      diameterRatio: MediaQuery.of(context).size.height,
      // line that are in top and bottom select item
      selectionOverlay: Stack(
        children: [
          Divider(
            color: borderColor ?? const Color(0xff919DD9),
            thickness: borderThickness ?? 2.2,
            endIndent: rightMargin ?? 0,
            indent: leftMargin ?? 0,
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Divider(
                color: borderColor ?? const Color(0xff919DD9),
                thickness: borderThickness ?? 2.2,
                endIndent: rightMargin ?? 0,
                indent: leftMargin ?? 0,
              )),
        ],
      ),
    );
  }
}
