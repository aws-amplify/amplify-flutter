@Timeout(Duration(minutes: 1))

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets(
    '',
    (_) async {
      expect(1 + 1, equals(2));
    },
  );
}
