import 'package:amplify_core/amplify_core.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_data/fake_notification_messges.dart';

void main() {
  group('PushNotificationMessage.fromJson', () {
    test(
        'should parse simple standard Message with title, body and default channelId',
        () {
      final parsedAndroidMessage =
          PushNotificationMessage.fromJson(standardAndroidPushMessage);
      expect(parsedAndroidMessage.title, 'TITTLE');
      expect(parsedAndroidMessage.body, 'BODY');
      expect(
        parsedAndroidMessage.fcmOptions?.channelId,
        'PINPOINT.NOTIFICATION',
      );

      final parsediOSMessage =
          PushNotificationMessage.fromJson(standardiOSMessage);
      expect(parsediOSMessage.title, 'TITTLE');
      expect(parsediOSMessage.body, 'BODY');
    });

    test('should parse url and deeplink', () {
      final parsedAndroidMessage =
          PushNotificationMessage.fromJson(urlsAndroidMessage);
      expect(parsedAndroidMessage.goToUrl, 'URL');
      expect(parsedAndroidMessage.deeplinkUrl, 'DEEPLINK');

      // ios shares the same key to pass along deeplink and url
      final parseiOSMessage = PushNotificationMessage.fromJson(urlsiOSMessage);
      expect(parseiOSMessage.goToUrl, 'URL');
      expect(parseiOSMessage.deeplinkUrl, 'URL');
    });

    test('should parse imageUrl', () {
      final parsedAndroidMessage =
          PushNotificationMessage.fromJson(imageUrlAndroidPushMessage);
      expect(parsedAndroidMessage.imageUrl, 'TEST_URL');

      // ios shares the same key to pass along deeplink and url
      final parseiOSMessage =
          PushNotificationMessage.fromJson(imageUrliOSMessage);
      expect(parseiOSMessage.imageUrl, 'TEST_URL');
    });

    test('should not crash when there is a type mismatch', () {
      PushNotificationMessage.fromJson(defectivePushMessage);
    });
  });
}
