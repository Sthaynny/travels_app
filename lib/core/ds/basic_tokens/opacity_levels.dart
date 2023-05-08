import 'package:flutter/material.dart';

///Responsável pela aplicação do nivel de opacidade em um componente de acordo com o [DS](https://www.figma.com/file/aJgNRR363n9ptJ2gky9Mvl/DS---Est%C3%BAdio-Banese?node-id=6%3A101).
///Para usar:
///
///```dart
/// OpacityLevels.soft.apply(
///         Container(
///           height: 100,
///           width: 100,
///           decoration: const BoxDecoration(
///             color: Colors.green,
///           ),
///         ),
///       )
/// ```
enum DSOpacity {
  ///$opacity-level-soft
  ///0.10
  soft(0.1),

  ///$opacity-level-medium
  ///0.20
  medium(0.2),

  ///$opacity-level-heavy
  ///0.50
  heavy(0.5);

  final double value;

  Widget apply(Widget child) {
    final opacity = this;
    return Opacity(
      opacity: opacity.value,
      child: child,
    );
  }

  const DSOpacity(this.value);
}
