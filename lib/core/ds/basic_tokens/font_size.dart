///DSFontSize é responsavel para o mapeamento dos tamanhos das fontes de acordo
///com o [DS](https://www.figma.com/file/aJgNRR363n9ptJ2gky9Mvl/DS---Est%C3%BAdio-Banese?node-id=6%3A101). Para usar:
///
///Example:
///```dart
/// TextStyle(
/// 	color: Colors.black,
/// 	fontSize: DSFontSize.xxxSmall.value,
/// )
///```
enum DSFontSize {
  ///$font-size-xxxsmall
  ///12px
  xxxSmall(12),

  ///$font-size-xxsmall
  ///14px
  xxSmall(14),

  ///$font-size-xsmall
  ///16px
  xSmall(16),

  ///$font-size-small
  ///20px
  small(20),

  ///$font-size-medium
  ///24px
  medium(24),

  ///$font-size-large
  ///32px
  large(32),

  ///$font-size-xlarge
  ///36px
  xLarge(36),

  ///$font-size-xxlarge
  ///38px
  xxLarge(38),

  ///$font-size-xxxlarge
  ///40px
  xxxLarge(40);

  final double value;
  const DSFontSize(this.value);
}
