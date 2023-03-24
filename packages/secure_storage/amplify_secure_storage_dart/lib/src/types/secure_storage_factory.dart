// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';

/// A factory constructor for a [SecureStorageInterface] instance.
typedef SecureStorageFactory = SecureStorageInterface Function(
  AmplifySecureStorageScope amplifyScope,
);

/// Storage scope for config of [SecureStorageInterface] within Amplify.
enum AmplifySecureStorageScope {
  /// Storage scope for Auth plugin using Cognito.
  awsCognitoAuthPlugin,

  /// Storage scope for Analytics plugin using Pinpoint.
  awsPinpointAnalyticsPlugin,

  /// Storage scope for PushNotifications using Pinpoint.
  awsPinpointPushNotificationsPlugin,
}
