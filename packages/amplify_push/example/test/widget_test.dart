import 'package:amplify_push_example/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('PushExampleApp builds without error', (tester) async {
    await tester.pumpWidget(const PushExampleApp());
    expect(find.byType(PushExampleApp), findsOneWidget);
  });
}
