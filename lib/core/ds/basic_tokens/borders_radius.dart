import 'package:flutter/material.dart';

/// Resposável por mapear o raio da borda no componentes de acordo com a definiçao do [DS](https://www.figma.com/file/aJgNRR363n9ptJ2gky9Mvl/DS---Est%C3%BAdio-Banese?node-id=6%3A101).
/// Para usar:
///
///
enum DSBorderRadius {
  ///$border-radius-nano
  ///5px
  nano(5),

  ///$border-radius-small
  ///8px
  small(8),

  ///$border-radius-medium
  ///10px
  medium(10),

  ///$border-radius-large
  ///24px
  large(24),

  ///$border-radius-pill
  ///>=500px
  pill(1000),

  ///$border-radius-circular
  ///50%
  circular(1500);

  final double value;
  BorderRadius get apply => BorderRadius.circular(value);
  const DSBorderRadius(this.value);
}
