// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_push/amplify_push.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_data/fake_notification_messages.dart';

void main() {
  group('PushNotificationMessage.fromJson', () {
    test('parses standard Android message with title, body, channelId', () {
      final msg = PushNotificationMessage.fromJson(
        standardAndroidPushMessage.cast(),
      );
      expect(msg.title, 'TITLE');
      expect(msg.body, 'BODY');
      expect(msg.fcmOptions?.channelId, 'DEFAULT_CHANNEL');
    });

    test('parses simple iOS alert string', () {
      final msg = PushNotificationMessage.fromJson(
        simpleAlertiOSMessage.cast(),
      );
      expect(msg.title, 'Hello, world');
    });

    test('parses standard iOS message with title and body', () {
      final msg = PushNotificationMessage.fromJson(standardiOSMessage.cast());
      expect(msg.title, 'TITLE');
      expect(msg.body, 'BODY');
    });

    test('parses url and deeplink from Android', () {
      final msg = PushNotificationMessage.fromJson(urlsAndroidMessage.cast());
      expect(msg.goToUrl, 'URL');
      expect(msg.deeplinkUrl, 'DEEPLINK');
    });

    test('parses deeplink from iOS', () {
      final msg = PushNotificationMessage.fromJson(urlsiOSMessage.cast());
      expect(msg.deeplinkUrl, 'URL');
      expect(msg.goToUrl, isNull);
    });

    test('parses imageUrl from Android', () {
      final msg = PushNotificationMessage.fromJson(
        imageUrlAndroidPushMessage.cast(),
      );
      expect(msg.imageUrl, 'TEST_URL');
    });

    test('parses imageUrl from iOS', () {
      final msg = PushNotificationMessage.fromJson(imageUrliOSMessage.cast());
      expect(msg.imageUrl, 'TEST_URL');
    });
  });
}
