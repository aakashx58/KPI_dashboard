import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(' test', (WidgetTester tester) async {
    // Build our app and trigger a frame.

    // Verify that the   box is present.
    expect(find.byType(TextField), findsOneWidget);

    // Verify that the send button is present.
    expect(find.byIcon(Icons.send), findsOneWidget);

    // Enter text into the   box.
    final Field = find.byType(TextField);
    await tester.enterText(Field, 'This is a test  ');

    // Verify that the text has been entered into the   box.
    expect(find.text('This is a test  '), findsOneWidget);

    // Tap the send button and trigger a frame.
    await tester.tap(find.byIcon(Icons.send));
    await tester.pump();

    // Verify that the   has been added to the list (adjust based on your implementation).
    // You need to replace 'Expected Result After Send' with what you expect after sending the  .
    expect(find.text('Expected Result After Send'), findsOneWidget);
  });
}
