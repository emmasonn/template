//all available fonts
import 'package:flutter/material.dart';
import 'package:peniremit/resources/app_dimen.dart';

class Fonts {
  static const String lexend = 'Lexend';
  static const String notoSerifJP = 'NotoSerifJP';
  static const String inter = 'Inter';
}

class TextStyles {
  static const TextStyle lexend = TextStyle(
    fontFamily: Fonts.lexend,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle notoSerifJP = TextStyle(
    fontFamily: Fonts.notoSerifJP,
    fontWeight: FontWeight.w400,
    letterSpacing: .5,
  );

  static const TextStyle inter = TextStyle(
    fontFamily: Fonts.inter,
    fontWeight: FontWeight.w400,
    letterSpacing: .5,
  );

  static TextStyle get appTitle => _createTextStyle(
        style: lexend,
        weight: FontWeight.w900,
        fontSize: FontSizes.s36,
      );

  static TextStyle get appTitle1 => _createTextStyle(
        style: lexend,
        weight: FontWeight.bold,
        fontSize: FontSizes.s20,
        height: .5,
      );

  static TextStyle get t1 => _createTextStyle(
        style: lexend,
        fontSize: FontSizes.s20,
        weight: FontWeight.w600,
        letterSpacing: -.32,
      );

  static TextStyle get t2 => _createTextStyle(
        style: lexend,
        weight: FontWeight.w500,
        fontSize: FontSizes.s16,
        letterSpacing: -.32,
      );

  static TextStyle get t3 => _createTextStyle(
        style: lexend,
        fontSize: FontSizes.s14,
        weight: FontWeight.w500,
        letterSpacing: -.32,
      );

  static TextStyle get h1 => _createTextStyle(
        style: lexend,
        weight: FontWeight.w500,
        fontSize: FontSizes.s28,
      );

  static TextStyle get h2 => _createTextStyle(
        style: lexend,
        fontSize: FontSizes.s24,
      );

  static TextStyle get h3 => _createTextStyle(
        style: lexend,
        fontSize: FontSizes.s18,
      );

  static TextStyle get h4 => _createTextStyle(
        style: lexend,
        letterSpacing: -.5,
        fontSize: FontSizes.s16,
      );

  static TextStyle get body1 => _createTextStyle(
        style: lexend,
        fontSize: FontSizes.s14,
      );

  static TextStyle get body2 => _createTextStyle(
        style: lexend,
        fontSize: FontSizes.s12,
      );

  static TextStyle get body3 => _createTextStyle(
        style: lexend,
        fontSize: FontSizes.s11,
      );

  static TextStyle get callout => _createTextStyle(
        style: lexend,
        fontSize: FontSizes.s14,
        letterSpacing: 1.75,
      );

  static TextStyle get calloutFocus => _createTextStyle(
        style: callout,
        weight: FontWeight.bold,
        fontSize: FontSizes.s14,
      );

  static TextStyle get btnStyle => _createTextStyle(
        style: lexend,
        weight: FontWeight.w400,
        fontSize: FontSizes.s14,
      );

  static TextStyle get caption => _createTextStyle(
        style: lexend,
        fontSize: FontSizes.s14,
        weight: FontWeight.w300,
        letterSpacing: .3,
      );

  static TextStyle _createTextStyle({
    required TextStyle style,
    required double fontSize,
    FontWeight? weight,
    double? letterSpacing,
    double? height,
  }) {
    return style.copyWith(
      fontSize: fontSize,
      fontWeight: weight ?? style.fontWeight,
      letterSpacing: letterSpacing ?? style.letterSpacing,
      height: height ?? style.height,
    );
  }
}
