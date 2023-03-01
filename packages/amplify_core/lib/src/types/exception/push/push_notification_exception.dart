// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.push.push_notifications_exception}
/// Base Class for Push Notification Exceptions
/// {@endtemplate}
class PushNotificationException extends AmplifyException {
  /// {@macro amplify_core.push.push_notifications_exception}
  const PushNotificationException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'PushNotificationException';
}
