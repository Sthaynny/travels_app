import 'package:flutter/material.dart';

abstract class DSColor {
  ///Registro da escala de cinza
  static const MaterialColor greyScale = MaterialColor(
    /// $color-grayscale-20
    0xFFD4D4D4,
    <int, Color>{
      ///$color-grayscale-0

      0: Color(0xFFFFFFFF),

      ///$color-grayscale-10
      10: Color(0xFFEAEAEA),

      ///$color-grayscale-20
      20: Color(0xFFD4D4D4),

      ///$color-grayscale-80
      80: Color(0xFF50554B),

      ///$color-grayscale-90
      90: Color(0xFF252525),

      ///$color-grayscale-dark
      100: Color(0xFF000000),
    },
  );

  ///$color-brand-primary
  ///#C5E64F
  static const primary = Color(0xFF666CA6);

  ///$color-auxiliary
  ///#E4F6F0
  static const auxiliary = Color(0xFFE4F6F0);

  ///$color-brand-secondary
  ///#0A4A33
  static const secundary = Color(0xFF6D7BCA);

  ///$color-state-error
  ///
  ///#EF594B
  static const error = Color(0xFFEF594B);

  ///$color-state-alert
  ///
  ///#EEA324
  static const alert = Color(0xFFEEA324);

  ///$color-state-success
  ///
  ///#50C170
  static const success = Color(0xFF50C170);

  ///$color-grayscale-0
  ///
  ///#FFFFFF
  static const white = Color(0xFFFFFFFF);

  ///$color-grayscale-dark
  ///
  ///#FFFFFF
  static const black = Color(0xFF000000);

  ///$color-background-gradient
  ///
  ///#0A4A33 -> #50C170
  static const gradient = RadialGradient(
    colors: [
      DSColor.auxiliary,
      DSColor.primary,
    ],
    focal: Alignment.bottomLeft,
    radius: 6,
  );

  static final themeData = ThemeData(
    primaryColor: primary,
    textTheme: const TextTheme(),
    secondaryHeaderColor: secundary,
    disabledColor: greyScale[20],
  );
}
