import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:travels_app/app/travels_app.dart';

void main() {
  testWidgets('TravelsApp builds MaterialApp.router', (tester) async {
    await tester.pumpWidget(const TravelsApp());
    await tester.pump();

    expect(find.byType(MaterialApp), findsOneWidget);
    await tester.pump(const Duration(seconds: 6));
  });
}
