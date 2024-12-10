import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:unit_test_julhan/main.dart';

/// Julhan Abdul Malik

void main() {
  testWidgets('Unit Test untuk Fungsi _incrementCounter',
      (WidgetTester tester) async {
    //
    await tester.pumpWidget(const MyApp());

    /// Unit Test 1
    // Verifikasi Counter untuk Start di 0
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    /// Unit Test 2
    // Klik '+' maka harus merubah Counter
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    /// Unit Test 3
    // Verifikasi Counter telah bertambah
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
