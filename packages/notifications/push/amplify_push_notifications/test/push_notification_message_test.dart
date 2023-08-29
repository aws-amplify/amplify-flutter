// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_data/fake_notification_messges.dart';

void main() {
  group('PushNotificationMessage.fromJson', () {
    test(
        'should parse simple standard Message with title, body and default channelId',
        () {
      final parsedAndroidMessage = PushNotificationMessage.fromJson(
        standardAndroidPushMessage.cast(),
      );
      expect(parsedAndroidMessage.title, 'TITTLE');
      expect(parsedAndroidMessage.body, 'BODY');
      expect(
        parsedAndroidMessage.fcmOptions?.channelId,
        'PINPOINT.NOTIFICATION',
      );

      final parsedSimpleiOSMessage = PushNotificationMessage.fromJson(
        simpleAlertiOSMessage.cast(),
      );
      expect(parsedSimpleiOSMessage.title, 'Hello, world');

      final parsediOSMessage = PushNotificationMessage.fromJson(
        standardiOSMessage.cast(),
      );
      expect(parsediOSMessage.title, 'TITTLE');
      expect(parsediOSMessage.body, 'BODY');
    });

    test('should parse url and deeplink', () {
      final parsedAndroidMessage = PushNotificationMessage.fromJson(
        urlsAndroidMessage.cast(),
      );
      expect(parsedAndroidMessage.goToUrl, 'URL');
      expect(parsedAndroidMessage.deeplinkUrl, 'DEEPLINK');

      // ios shares the same key to pass along deeplink and url
      final parseiOSMessage = PushNotificationMessage.fromJson(
        urlsiOSMessage.cast(),
      );
      expect(parseiOSMessage.goToUrl, 'URL');
      expect(parseiOSMessage.deeplinkUrl, 'URL');
    });

    test('should parse imageUrl', () {
      final parsedAndroidMessage = PushNotificationMessage.fromJson(
        imageUrlAndroidPushMessage.cast(),
      );
      expect(parsedAndroidMessage.imageUrl, 'TEST_URL');

      // ios shares the same key to pass along deeplink and url
      final parseiOSMessage = PushNotificationMessage.fromJson(
        imageUrliOSMessage.cast(),
      );
      expect(parseiOSMessage.imageUrl, 'TEST_URL');
    });
  });
}
