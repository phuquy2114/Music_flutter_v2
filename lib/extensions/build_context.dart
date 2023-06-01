import 'package:flutter/cupertino.dart';

extension BuildContextExt on BuildContext {
  bool isClickWidget(Offset widgetOffset, Size widgetSize, Offset position) {
    if ((widgetOffset.dx + widgetSize.width) >= position.dx &&
        (widgetOffset.dx <= position.dx) &&
        (widgetOffset.dy + widgetSize.height) >= position.dy &&
        (widgetOffset.dy <= position.dy)) {
      return true;
    }
    return false;
  }
}
