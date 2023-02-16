// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import '../notification_types.dart';

/// {@template amplify_core.push.on_remote_message_callback}
/// Type definition for the callback functions provided to the `onNotifictionReceivedInBackground` API
/// {@endtemplate}
typedef OnRemoteMessageCallback = FutureOr<void> Function(
  PushNotificationMessage remotePushMessage,
);
