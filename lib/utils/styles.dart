import 'dart:io';

import 'package:flutter/material.dart';

import 'app_colors.dart';

class Styles {

  static const String hiraginoKakuGothicPro = 'Hiragino Kaku Gothic Pro W3';
  static const String notoSans = 'NotoSans';

  static TextStyle buttonLabel = TextStyle(
      fontFamily: Platform.isAndroid
          ? notoSans
          : hiraginoKakuGothicPro,
      fontWeight: FontWeight.bold,
      fontSize: 18.0,
      color: Colors.white);

  static TextStyle msgBadgeLabel = TextStyle(
      fontFamily: Platform.isAndroid
          ? notoSans
          : hiraginoKakuGothicPro,
      fontWeight: FontWeight.bold,
      fontSize: 8.0,
      color: Colors.white);

  static TextStyle n08 = TextStyle(
    fontFamily: Platform.isAndroid
        ? notoSans
        : hiraginoKakuGothicPro,
    fontWeight: FontWeight.w300,
    fontSize: 8.0,
    color: Colors.black,
    height: 1,
    letterSpacing: 1,
  );

  static TextStyle n09 = TextStyle(
    fontFamily: Platform.isAndroid
        ? notoSans
        : hiraginoKakuGothicPro,
    fontWeight: FontWeight.w300,
    fontSize: 9.0,
    color: Colors.black,
    height: 1,
    letterSpacing: 1,
  );

  static TextStyle n10 = TextStyle(
    fontFamily: Platform.isAndroid
        ? notoSans
        : hiraginoKakuGothicPro,
    fontWeight: FontWeight.bold,
    fontSize: 10.0,
    color: Colors.black,
    height: 1,
    letterSpacing: 1,
  );

  static TextStyle n11 = TextStyle(
    fontFamily: Platform.isAndroid
        ? notoSans
        : hiraginoKakuGothicPro,
    fontWeight: FontWeight.w600,
    fontSize: 11.0,
    color: Colors.black,
    height: 1,
    letterSpacing: 1,
  );

  static TextStyle n12 = TextStyle(
    fontFamily: Platform.isAndroid
        ? notoSans
        : hiraginoKakuGothicPro,
    fontWeight: FontWeight.w300,
    fontSize: 12.0,
    color: Colors.black,
    height: 1,
    letterSpacing: 1,
  );

  static TextStyle b12 = TextStyle(
    fontFamily: Platform.isAndroid
        ? notoSans
        : hiraginoKakuGothicPro,
    fontWeight: FontWeight.w900,
    fontSize: 12.0,
    color: Colors.black,
    height: 1,
    letterSpacing: 1,
  );

  static TextStyle n13 = TextStyle(
    fontFamily: Platform.isAndroid
        ? notoSans
        : hiraginoKakuGothicPro,
    fontWeight: FontWeight.w300,
    fontSize: 13.0,
    color: Colors.black,
    height: 1,
    letterSpacing: 1,
  );

  static TextStyle n14 = TextStyle(
    fontFamily: Platform.isAndroid
        ? notoSans
        : hiraginoKakuGothicPro,
    fontWeight: FontWeight.w300,
    fontSize: 14.0,
    color: Colors.black,
    height: 1,
    letterSpacing: 1,
  );

  static TextStyle b14 = TextStyle(
    fontFamily: Platform.isAndroid
        ? notoSans
        : hiraginoKakuGothicPro,
    fontWeight: FontWeight.w900,
    fontSize: 14.0,
    color: Colors.black,
    height: 1,
    letterSpacing: 1,
  );

  static TextStyle n15 = TextStyle(
    fontFamily: Platform.isAndroid
        ? notoSans
        : hiraginoKakuGothicPro,
    fontWeight: FontWeight.w300,
    fontSize: 15.0,
    color: Colors.black,
    height: 1,
    letterSpacing: 1,
  );

  static TextStyle n16 = TextStyle(
    fontFamily: Platform.isAndroid
        ? notoSans
        : hiraginoKakuGothicPro,
    fontWeight: FontWeight.w300,
    fontSize: 16.0,
    color: Colors.black,
    height: 1,
    letterSpacing: 1,
  );

  static TextStyle n17 = TextStyle(
    fontFamily: Platform.isAndroid
        ? notoSans
        : hiraginoKakuGothicPro,
    fontWeight: FontWeight.w300,
    fontSize: 17.0,
    color: Colors.black,
    letterSpacing: 0,
  );

  static TextStyle b16V2 = TextStyle(
    fontFamily: Platform.isAndroid
        ? notoSans
        : hiraginoKakuGothicPro,
    fontWeight: FontWeight.w300,
    fontSize: 16.0,
    color: Colors.black,
    height: 1,
    letterSpacing: 1,
  );

  static TextStyle b16 = TextStyle(
    fontFamily: Platform.isAndroid
        ? notoSans
        : hiraginoKakuGothicPro,
    fontWeight: FontWeight.w600,
    fontSize: 16.0,
    color: Colors.black,
    height: 1,
    letterSpacing: 1,
  );

  static TextStyle n20 = TextStyle(
    fontFamily: Platform.isAndroid
        ? notoSans
        : hiraginoKakuGothicPro,
    fontWeight: FontWeight.w300,
    fontSize: 20.0,
    color: Colors.black,
    height: 1,
    letterSpacing: 1,
  );

  static TextStyle n24 = TextStyle(
    fontFamily: Platform.isAndroid
        ? notoSans
        : hiraginoKakuGothicPro,
    fontWeight: FontWeight.w300,
    fontSize: 24.0,
    color: Colors.black,
    height: 1,
    letterSpacing: 1,
  );

  static BoxDecoration get contentBoxDecoration => BoxDecoration(
        border: Border.all(color: AppColors.black, width: 2),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
              color: Colors.black,
              spreadRadius: 1.0,
              blurRadius: 0.0,
              offset: Offset(8, 12)),
        ],
      );

  static BoxDecoration get requiredMarkDecoration => BoxDecoration(
        color: AppColors.red,
        borderRadius: BorderRadius.circular(4),
      );

  static BoxDecoration get textBackgroundDecoration => BoxDecoration(
        border: Border.all(color: AppColors.gray99, width: 1),
        color: AppColors.white,
        borderRadius: BorderRadius.circular(4),
      );

  static BoxDecoration get invalidTextBackgroundDecoration => BoxDecoration(
        border: Border.all(color: AppColors.primary, width: 1),
        color: AppColors.errorBackground,
        borderRadius: BorderRadius.circular(4),
      );

  static Divider get divider =>
      const Divider(height: 1, color: AppColors.hE2E2E2);
}

extension TextStyleExt on TextStyle {

  TextStyle white() => copyWith(color: AppColors.white);

  TextStyle gray() => copyWith(color: AppColors.grayA2);

  TextStyle primary() => copyWith(color: AppColors.red);

  TextStyle black() => copyWith(color: AppColors.black);

  TextStyle underline() => copyWith(decoration: TextDecoration.underline);

  ///
  /// 行の高さ(px)を引数にして行の高さを変更する
  TextStyle lineSpacing(double height) => copyWith(height: height / fontSize!);

  ///
  /// 文字サイズに対しての割合(%)を引数にして行の高さを変更する
  /// 文字サイズ14に対して、行の高さを23にしたい場合
  /// lineHeight(23 / 14) == lineSpacing(23)
  TextStyle lineHeight(double value) => copyWith(height: value);
}
