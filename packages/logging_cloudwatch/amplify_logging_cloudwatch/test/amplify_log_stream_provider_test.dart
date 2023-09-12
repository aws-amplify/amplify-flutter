@TestOn('vm')

import 'package:amplify_logging_cloudwatch/src/amplify_log_stream_name_provider.dart';
import 'package:flutter_test/flutter_test.dart' as flutter;
import 'package:test/test.dart';

void main() {
  flutter.TestWidgetsFlutterBinding.ensureInitialized();
  test('it uses uuid and guest when their values are not provided', () async {
    final logStreamNameProvider = AmplifyLogStreamNameProvider();
    await expectLater(logStreamNameProvider.defaultLogStreamName(), completes);
  });

  test('it caches the device Id', () async {
    final logStreamNameProvider = AmplifyLogStreamNameProvider();
    final logStreamName1 = await logStreamNameProvider.defaultLogStreamName();
    final logStreamName2 = await logStreamNameProvider.defaultLogStreamName();

    expect(logStreamName1, logStreamName2);
  });
}
