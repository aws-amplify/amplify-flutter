// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import '../notification_types.dart';

typedef OnRemoteMessageCallback = FutureOr<void> Function(
  PushNotificationMessage remotePushMessage,
);
