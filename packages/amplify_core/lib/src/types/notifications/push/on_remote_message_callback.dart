// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/src/types/notifications/notification_types.dart';

/// {@template amplify_core.push.on_remote_message_callback}
/// Type definition for the callback functions provided to the `onNotificationReceivedInBackground` API
/// {@endtemplate}
typedef OnRemoteMessageCallback = FutureOr<void> Function(
  PushNotificationMessage remotePushMessage,
);
