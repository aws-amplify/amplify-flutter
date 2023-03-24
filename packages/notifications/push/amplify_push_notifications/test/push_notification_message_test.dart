import 'package:amplify_core/amplify_core.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_data/fake_notification_messges.dart';

// TODO(Samaritan1011001): Add tests after Android utils integration
void main() {
  group('PushNotificationMessage.fromJson', () {
    test(
        'should parse simple standard Android Message with title, body and default channelId',
        () {
      final parsedMessage =
          PushNotificationMessage.fromJson(standardAndroidPushMessage);
      expect(parsedMessage.title, 'TITTLE');
      expect(parsedMessage.body, 'BODY');
      expect(parsedMessage.fcmOptions?.channelId, 'PINPOINT.NOTIFICATION');
    });

    test('should parse url and deeplink', () {
      final parsedMessage =
          PushNotificationMessage.fromJson(urlsAndroidMessage);
      expect(parsedMessage.goToUrl, 'URL');
      expect(parsedMessage.deeplinkUrl, 'DEEPLINK');
    });
  });
}
