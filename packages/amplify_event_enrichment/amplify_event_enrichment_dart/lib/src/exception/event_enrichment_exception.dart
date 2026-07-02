// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';

/// {@template amplify_event_enrichment.event_enrichment_exception}
/// Base exception for Amplify Event Enrichment errors.
/// {@endtemplate}
sealed class EventEnrichmentException extends AmplifyException {
  /// {@macro amplify_event_enrichment.event_enrichment_exception}
  const EventEnrichmentException({
    required super.message,
    required super.recoverySuggestion,
    super.cause,
  });
}

/// {@template amplify_event_enrichment.client_closed_exception}
/// Thrown when an operation is attempted on a closed client.
/// {@endtemplate}
final class EventEnrichmentClosedException extends EventEnrichmentException {
  /// {@macro amplify_event_enrichment.client_closed_exception}
  const EventEnrichmentClosedException()
    : super(
        message: 'Client has been closed',
        recoverySuggestion:
            'Create a new EventEnrichmentClient instance.',
      );
}
