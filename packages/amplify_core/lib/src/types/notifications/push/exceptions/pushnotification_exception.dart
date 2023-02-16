// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// Base Class for Analytics Exceptions
class PushNotificationException extends AmplifyException {
  const PushNotificationException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'PushNotificationException';
}
