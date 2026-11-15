// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/config/amplify_outputs/notifications/amazon_pinpoint_channel.dart';
import 'package:test/test.dart';

const _connectOnly = '''{
  "version": "1",
  "notifications": {
    "amazon_connect": {
      "aws_region": "us-east-1",
      "endpoint": "https://abc123.execute-api.us-east-1.amazonaws.com"
    }
  }
}''';

const _pinpointOnly = '''{
  "version": "1",
  "notifications": {
    "aws_region": "us-east-1",
    "amazon_pinpoint_app_id": "APP_ID",
    "channels": ["FCM", "APNS"]
  }
}''';

const _both = '''{
  "version": "1",
  "notifications": {
    "aws_region": "us-east-1",
    "amazon_pinpoint_app_id": "APP_ID",
    "channels": ["FCM"],
    "amazon_connect": {
      "aws_region": "us-west-2",
      "endpoint": "https://abc123.execute-api.us-west-2.amazonaws.com"
    }
  }
}''';

const _fullOutputs = '''{
  "version": "1",
  "auth": {
    "aws_region": "us-east-1",
    "user_pool_id": "us-east-1_test",
    "user_pool_client_id": "clientId",
    "identity_pool_id": "us-east-1:00000000-0000-0000-0000-000000000000",
    "unauthenticated_identities_enabled": true
  },
  "notifications": {
    "amazon_connect": {
      "aws_region": "us-east-1",
      "endpoint": "https://abc123.execute-api.us-east-1.amazonaws.com"
    }
  }
}''';

void main() {
  group('NotificationsOutputs', () {
    test('parses Connect-only shape', () {
      final json = jsonDecode(_connectOnly) as Map<String, Object?>;
      final parsed = AmplifyOutputs.fromJson(json);
      final notifications = parsed.notifications;
      expect(notifications, isNotNull);
      expect(notifications!.awsRegion, isNull);
      expect(notifications.amazonPinpointAppId, isNull);
      expect(notifications.channels, isEmpty);
      final amazonConnect = notifications.amazonConnect;
      expect(amazonConnect, isNotNull);
      expect(amazonConnect!.awsRegion, 'us-east-1');
      expect(
        amazonConnect.endpoint,
        'https://abc123.execute-api.us-east-1.amazonaws.com',
      );
    });

    test('parses legacy Pinpoint-only shape', () {
      final json = jsonDecode(_pinpointOnly) as Map<String, Object?>;
      final parsed = AmplifyOutputs.fromJson(json);
      final notifications = parsed.notifications;
      expect(notifications, isNotNull);
      expect(notifications!.awsRegion, 'us-east-1');
      expect(notifications.amazonPinpointAppId, 'APP_ID');
      expect(notifications.channels, [
        AmazonPinpointChannel.fcm,
        AmazonPinpointChannel.apns,
      ]);
      expect(notifications.amazonConnect, isNull);
    });

    test('parses both Pinpoint and Connect sections together', () {
      final json = jsonDecode(_both) as Map<String, Object?>;
      final parsed = AmplifyOutputs.fromJson(json);
      final notifications = parsed.notifications;
      expect(notifications, isNotNull);
      expect(notifications!.awsRegion, 'us-east-1');
      expect(notifications.amazonPinpointAppId, 'APP_ID');
      expect(notifications.channels, [AmazonPinpointChannel.fcm]);
      final amazonConnect = notifications.amazonConnect;
      expect(amazonConnect, isNotNull);
      expect(amazonConnect!.awsRegion, 'us-west-2');
      expect(
        amazonConnect.endpoint,
        'https://abc123.execute-api.us-west-2.amazonaws.com',
      );
    });

    test(
      'full outputs with auth and notifications.amazon_connect round-trips',
      () {
        final json = jsonDecode(_fullOutputs) as Map<String, Object?>;
        final parsed = AmplifyOutputs.fromJson(json);
        expect(parsed.auth, isNotNull);
        expect(parsed.notifications?.amazonConnect, isNotNull);
        final roundTripped = AmplifyOutputs.fromJson(parsed.toJson());
        expect(roundTripped, equals(parsed));
      },
    );
  });
}
