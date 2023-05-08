import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travels_app/core/ds/basic_tokens/basic_tokens.dart';

///Definição das fontes utilizadas pelo aplicativos
abstract class DSFontStyle {
  ///Retorna o estilo dmSans podendo o passar todas as configuraçoes do textstyle convencional
  static TextStyle dmSans({
    Color? color,
    Color? backgroundColor,
    DSFontSize fontSize = DSFontSize.xxxSmall,
    DSFontWeight fontWeight = DSFontWeight.regular,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    DSLineHeigth lineHeigth = DSLineHeigth.tight,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<Shadow>? shadows,
    List<FontFeature>? fontFeatures,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) =>
      GoogleFonts.dmSans(
        color: color,
        backgroundColor: backgroundColor,
        fontSize: fontSize.value,
        fontWeight: fontWeight.value,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        height: lineHeigth.call(fonteSize: fontSize.value),
        locale: locale,
        foreground: foreground,
        background: background,
        shadows: shadows,
        fontFeatures: fontFeatures,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
      );

  ///Retorna o estilo ROBOTO podendo o passar todas as configuraçoes do textstyle convencional
  static TextStyle roboto({
    Color? color,
    Color? backgroundColor,
    DSFontSize fontSize = DSFontSize.xxxSmall,
    DSFontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    DSLineHeigth lineHeigth = DSLineHeigth.tight,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<Shadow>? shadows,
    List<FontFeature>? fontFeatures,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) =>
      GoogleFonts.roboto(
        color: color,
        backgroundColor: backgroundColor,
        fontSize: fontSize.value,
        fontWeight: fontWeight?.value,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        height: lineHeigth.call(fonteSize: fontSize.value),
        locale: locale,
        foreground: foreground,
        background: background,
        shadows: shadows,
        fontFeatures: fontFeatures,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
      );

  static TextStyle get headline32Black => DSFontStyle.roboto(
        fontSize: DSFontSize.large,
        fontWeight: DSFontWeight.black,
      );

  static TextStyle get headline24Bold => DSFontStyle.roboto(
        fontSize: DSFontSize.medium,
        fontWeight: DSFontWeight.bold,
      );

  static TextStyle get headline24Regular => DSFontStyle.roboto(
        fontSize: DSFontSize.medium,
        fontWeight: DSFontWeight.regular,
      );
  static TextStyle get headline20Bold => DSFontStyle.roboto(
        fontSize: DSFontSize.small,
        fontWeight: DSFontWeight.bold,
      );

  static TextStyle get subtitle16Regular => DSFontStyle.roboto(
        fontSize: DSFontSize.xSmall,
        fontWeight: DSFontWeight.regular,
      );

  static TextStyle get subtitle14Medium => DSFontStyle.roboto(
        fontSize: DSFontSize.xxSmall,
        fontWeight: DSFontWeight.medium,
      );

  static TextStyle get body16Bold => DSFontStyle.roboto(
        fontSize: DSFontSize.xSmall,
        fontWeight: DSFontWeight.bold,
      );

  static TextStyle get body16Regular => DSFontStyle.roboto(
        fontSize: DSFontSize.xSmall,
        fontWeight: DSFontWeight.regular,
      );

  static TextStyle get body14Regular => DSFontStyle.roboto(
        fontSize: DSFontSize.xxSmall,
        fontWeight: DSFontWeight.regular,
      );

  static TextStyle get button16Bold => DSFontStyle.roboto(
        fontSize: DSFontSize.xSmall,
        fontWeight: DSFontWeight.bold,
      );

  static TextStyle get caption12Regular => DSFontStyle.roboto(
        fontSize: DSFontSize.xxxSmall,
        fontWeight: DSFontWeight.regular,
      );
}

extension TextStyleExt on TextStyle {
  TextStyle setColor(Color? color) {
    final style = this;
    return style.copyWith(color: color);
  }
}
