
import 'package:flutter/material.dart';

class ScreenSizeUtils {
  /**
   * Iphone 6S
   * Iphone X
   */
  static bool smartViewPortSize({required BuildContext context}) {
    return MediaQuery.of(context).size.width > 375 ? true : false;
  }

}