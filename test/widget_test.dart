// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:duplikasiui3/main.dart';

void main() {
  testWidgets('Menu Makanan Hari Ini', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the title is present in the AppBar.
    expect(find.text(''), findsOneWidget);

    // Verify that the menu cards are displayed.
    expect(find.text('Makanan'), findsOneWidget);
    expect(find.text('Minuman'), findsOneWidget);
    expect(find.text('Kue'), findsOneWidget);
    expect(find.text('Promo'), findsOneWidget);

    // Verify that icons are present.
    expect(find.byIcon(Icons.fastfood), findsOneWidget);
    expect(find.byIcon(Icons.local_drink), findsOneWidget);
    expect(find.byIcon(Icons.cake), findsOneWidget);
    expect(find.byIcon(Icons.local_offer), findsOneWidget);
  });
}
