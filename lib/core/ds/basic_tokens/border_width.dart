///Enum responsável para informar o tamanho da borda seguindo o [DS](https://www.figma.com/file/aJgNRR363n9ptJ2gky9Mvl/DS---Est%C3%BAdio-Banese?node-id=6%3A101). Para usar:
///
///```dart
/// Container(
///         height: 100,
///         width: 100,
///         decoration: BoxDecoration(
///             color: Colors.green,
///             border: borderWidths != null
///                 ? Border.all(width: BorderWidths.thin.value)
///                 : null),
///       );
/// ```
/// Obs: Se não precisar de bordar, pode retirar o border.
enum DSBorderWidth {
  ///$border-width-hairline
  ///1px
  hairline(1.0),

  ///$border-width-thin
  ///1.5px
  thin(1.5),

  ///$border-width-thick
  ///4px
  thick(4.0),

  ///$border-width-heavy
  ///8px
  heavy(8.0);

  final double value;

  const DSBorderWidth(this.value);
}

