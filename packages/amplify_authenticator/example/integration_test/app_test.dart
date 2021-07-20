import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:amplify_authenticator_example/main.dart' as app;

void main() {
  group('App Test', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    testWidgets('full app test', (tester) async {
      app.main();
      tester.pumpAndSettle();
    });
  });
}
