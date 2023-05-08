import 'package:flutter/material.dart';

///Shadow: responsável por configurar o sombreamento para ser aplicado de acordo
///com o [DS](https://www.figma.com/file/aJgNRR363n9ptJ2gky9Mvl/DS---Est%C3%BAdio-Banese?node-id=6%3A101). Para usar:
///
///```dart
///decoration: BoxDecoration(
///   color: Colors.white38,
///   boxShadow: Shadow.light.apply,
/// ),
/// ```
enum DSShadow {
  ///$shadow-light
  ///x: 0 y: 2 blurRadius: 3
  light(BoxShadow(
    color: Color.fromRGBO(151, 160, 170, 0.5),
    blurRadius: 3,
    offset: Offset(0, 2),
  )),

  ///$shadow-soft
  ///x:0 y:10 blurRadius: 20
  soft(BoxShadow(
    color: Color.fromRGBO(43, 37, 63, 0.1),
    blurRadius: 20,
    offset: Offset(0, 10),
  )),

  ///$shadow-medium
  ///x:0 y:0 blurRadius:30
  medium(BoxShadow(
    color: Color.fromRGBO(51, 48, 62, 0.2),
    blurRadius: 30,
  ));

  final BoxShadow value;
  const DSShadow(this.value);
}
