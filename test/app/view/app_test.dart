import 'package:flutter/cupertino.dart';
import 'package:flutter_examples/app/app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(App());
      expect(find.byType(Placeholder), findsOneWidget);
    });
  });
}
