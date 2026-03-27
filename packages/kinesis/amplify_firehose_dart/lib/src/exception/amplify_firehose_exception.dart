// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_record_cache_dart/amplify_record_cache_dart.dart';

/// Default recovery suggestion for errors.
const String defaultRecoverySuggestion =
    'Inspect the underlying error for more details.';

/// {@template amplify_firehose.amplify_firehose_exception}
/// Base exception for Amplify Firehose errors.
/// {@endtemplate}
sealed class AmplifyFirehoseException extends AmplifyException {
  /// {@macro amplify_firehose.amplify_firehose_exception}
  const AmplifyFirehoseException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  /// Maps an arbitrary error into the appropriate
  /// [AmplifyFirehoseException] subtype.
  static AmplifyFirehoseException from(Object error) => switch (error) {
    final AmplifyFirehoseException e => e,
    final RecordCacheValidationException e => FirehoseValidationException(
      e.message,
      recoverySuggestion: e.recoverySuggestion,
    ),
    final RecordCacheLimitExceededException e => FirehoseLimitExceededException(
      message: e.message,
      recoverySuggestion: e.recoverySuggestion,
    ),
    final RecordCacheDatabaseException e => FirehoseStorageException(
      e.message,
      recoverySuggestion: e.recoverySuggestion,
      underlyingException: e.cause,
    ),
    final Exception e => FirehoseUnknownException(
      e.toString(),
      underlyingException: e,
    ),
    _ => FirehoseUnknownException(error.toString()),
  };
}

/// {@template amplify_firehose.firehose_storage_exception}
/// Thrown when a local cache/database error occurs.
/// {@endtemplate}
final class FirehoseStorageException extends AmplifyFirehoseException {
  /// {@macro amplify_firehose.firehose_storage_exception}
  const FirehoseStorageException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'FirehoseStorageException';
}

/// {@template amplify_firehose.firehose_limit_exceeded_exception}
/// Thrown when the local cache is full.
/// {@endtemplate}
final class FirehoseLimitExceededException extends AmplifyFirehoseException {
  /// {@macro amplify_firehose.firehose_limit_exceeded_exception}
  const FirehoseLimitExceededException({
    String? message,
    String? recoverySuggestion,
  }) : super(
         message ?? 'Cache is full',
         recoverySuggestion:
             recoverySuggestion ?? 'Call flush() or clearCache().',
       );

  @override
  String get runtimeTypeName => 'FirehoseLimitExceededException';
}

/// {@template amplify_firehose.firehose_validation_exception}
/// Thrown when record input validation fails (e.g. oversized record).
/// {@endtemplate}
final class FirehoseValidationException extends AmplifyFirehoseException {
  /// {@macro amplify_firehose.firehose_validation_exception}
  const FirehoseValidationException(super.message, {super.recoverySuggestion});

  @override
  String get runtimeTypeName => 'FirehoseValidationException';
}

/// {@template amplify_firehose.firehose_unknown_exception}
/// Catch-all for unexpected errors.
/// {@endtemplate}
final class FirehoseUnknownException extends AmplifyFirehoseException {
  /// {@macro amplify_firehose.firehose_unknown_exception}
  const FirehoseUnknownException(super.message, {super.underlyingException});

  @override
  String get runtimeTypeName => 'FirehoseUnknownException';
}

/// {@template amplify_firehose.client_closed_exception}
/// Thrown when an operation is attempted on a closed client.
/// {@endtemplate}
final class FirehoseClientClosedException extends AmplifyFirehoseException {
  /// {@macro amplify_firehose.client_closed_exception}
  const FirehoseClientClosedException()
    : super(
        'Client has been closed',
        recoverySuggestion: 'Create a new AmplifyFirehoseClient instance.',
      );

  @override
  String get runtimeTypeName => 'FirehoseClientClosedException';
}
