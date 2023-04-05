// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_push_notifications/amplify_push_notifications.dart';

class TestAmplifyPushNotifications extends AmplifyPushNotifications {
  TestAmplifyPushNotifications({
    required super.serviceProviderClient,
    required super.backgroundProcessor,
    super.dependencyManager,
  });
}
