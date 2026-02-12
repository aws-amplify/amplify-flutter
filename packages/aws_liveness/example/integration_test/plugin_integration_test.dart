// This is a basic Flutter integration test.
//
// Since integration tests run in a full Flutter application, they can interact
// with the host side of a plugin implementation, unlike Dart unit tests.
//
// For more information about Flutter integration tests, please see
// https://flutter.dev/to/integration-testing

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:aws_liveness/aws_liveness.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('AwsLiveness plugin is available', (WidgetTester tester) async {
    // The AwsLiveness class uses static methods, so we just verify the class is accessible
    // Actual liveness testing requires a real session ID from a backend
    // and cannot be tested in an integration test without proper setup
    expect(AwsLiveness.enableLogging, isFalse);

    // Verify events stream is available
    expect(AwsLiveness.events, isNotNull);
  });
}
