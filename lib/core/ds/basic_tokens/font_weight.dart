import 'package:flutter/material.dart';

///DSFontWeight: resposável pela largura da fonte de acordo com o [DS](https://www.figma.com/file/aJgNRR363n9ptJ2gky9Mvl/DS---Est%C3%BAdio-Banese?node-id=6%3A101).
///Para usar:
///
/// ```dart
/// TextStyle(
/// 	color: Colors.black,
/// 	fontWeight: DSFontWeight.bold.value,
/// )
/// ```

enum DSFontWeight {
  ///$font-weight-black
  ///w900
  black(FontWeight.w900),

  ///$font-weight-bold
  ///700
  bold(FontWeight.w700),

  ///$font-weight-Medium
  ///500
  medium(FontWeight.w500),

  ///$font-weight-regular
  ///400
  regular(FontWeight.w400),

  ///$font-weight-light
  ///200
  light(FontWeight.w200);

  final FontWeight value;
  const DSFontWeight(this.value);
}
