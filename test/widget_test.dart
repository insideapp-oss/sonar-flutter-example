// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:sonar_flutter_example/main.dart';

void main() {
  testWidgets('MyHomePage widget test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(
      home: MyHomePage(title: 'Test Title'),
    ));

    // Verify that the title is correct
    expect(find.text('Test Title'), findsOneWidget);

    // Verify that the main text is present
    expect(find.text('Like sonar-flutter plugin?'), findsOneWidget);

    // Verify that both buttons are present
    expect(find.text('Give it a star on GitHub'), findsOneWidget);
    expect(find.text('Sponsor us on GitHub'), findsOneWidget);

    // Verify that there are two ElevatedButtons
    expect(find.byType(ElevatedButton), findsNWidgets(2));
  });
}
