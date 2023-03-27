// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_analytics_pinpoint.exception.invalid_event_data_exception}
/// Exception when event data is invalid and
/// cannot be sent to the server.
/// {@endtemplate}
class InvalidEventDataException extends AnalyticsException {
  /// {@macro amplify_analytics_pinpoint.exception.invalid_event_data_exception}
  const InvalidEventDataException({
    super.recoverySuggestion,
    super.underlyingException,
  }) : super(
          'Invalid event data, cannot send event to server.',
        );

  @override
  String get runtimeTypeName => 'InvalidEventDataException';
}
