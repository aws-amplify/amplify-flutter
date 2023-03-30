// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.analytics.invalid_event_exception}
/// Exception when event data is invalid and
/// cannot be sent to the server.
/// {@endtemplate}
class InvalidEventException extends AnalyticsException {
  /// {@macro amplify_core.analytics.invalid_event_exception}
  const InvalidEventException({
    super.recoverySuggestion,
    super.underlyingException,
  }) : super(
          'Invalid event data.',
        );

  @override
  String get runtimeTypeName => 'InvalidEventException';
}
