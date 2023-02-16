// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

library amplify_push_notifications_pinpoint;

import 'package:amplify_push_notifications/amplify_push_notifications.dart';
import 'package:amplify_push_notifications_pinpoint/src/pinpoint_provider.dart';

/// {@template amplify_push_notifications_pinpoint.amplify_push_notifications_pinpoint}
/// The AWS Pinpoint implementation of the Amplify Push Notification category.
/// {@endtemplate}
class AmplifyPushNotificationsPinpoint extends AmplifyPushNotifications {
  /// {@macro amplify_push_notifications_pinpoint.amplify_push_notifications_pinpoint}
  AmplifyPushNotificationsPinpoint()
      : super(
          serviceProviderClient: PinpointProvider(),
        );
}
