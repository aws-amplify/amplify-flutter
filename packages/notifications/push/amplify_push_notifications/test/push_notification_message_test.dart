import 'package:amplify_core/amplify_core.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_data/fake_notification_messges.dart';

// TODO(Samaritan1011001): Add tests after Android utils integration
void main() {
  group('PushNotificationMessage', () {
    test('fromJson should return the correct object', () {
      final push = PushNotificationMessage.fromJson(androidPushMessage);
      print([push.fcmOptions?.sentTime]);
    });
  });
}
