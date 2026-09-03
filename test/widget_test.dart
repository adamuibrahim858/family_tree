// This is a basic Flutter widget test.
import 'package:flutter_test/flutter_test.dart';
import 'package:family_tree/main.dart';

void main() {
  testWidgets('Salman Family App smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const SalmanFamilyApp());

    // Verify that the initial route (/home) displays the Home Screen text.
    expect(find.text('Home Screen'), findsOneWidget);
  });
}
