import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:premiers_secours_app/main.dart';

void main() {
  testWidgets('App loads home screen', (WidgetTester tester) async {
    await tester.pumpWidget(const PremiersSecoursApp());
    await tester.pumpAndSettle();

    expect(find.text('Setup terminé ✅'), findsOneWidget);
  });
}