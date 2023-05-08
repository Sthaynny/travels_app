///DSLineHeigth é resposavel por definir a altura da linha de acordo com o [DS](https://www.figma.com/file/aJgNRR363n9ptJ2gky9Mvl/DS---Est%C3%BAdio-Banese?node-id=6%3A101).
///Para usar
///
///```dart
/// TextStyle(
/// 	color: Colors.black,
/// 	fontSize: fontSize.map,
/// )
/// ```
enum DSLineHeigth {
  ///$line-height-tight
  ///100%
  tight,

  ///$line-height-medium
  ///120%
  medium,

  ///$line-height-distant
  ///150%
  distant,

  ///$line-height-superdistant
  ///200%
  superDistant,
}

extension LineHeigthExt on DSLineHeigth {
  double? call({double? fonteSize}) {
    final size = fonteSize ?? 12;
    return {
      DSLineHeigth.medium: size * .2,
      DSLineHeigth.distant: size * .5,
      DSLineHeigth.superDistant: size * 1,
    }[this];
  }
}
