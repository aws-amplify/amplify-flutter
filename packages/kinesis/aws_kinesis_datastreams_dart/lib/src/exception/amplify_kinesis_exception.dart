// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:aws_kinesis_datastreams_dart/src/exception/record_cache_exception.dart';

/// Default recovery suggestion for errors.
const String defaultRecoverySuggestion =
    'Inspect the underlying error for more details.';

/// {@template aws_kinesis_datastreams.amplify_kinesis_exception}
/// Base exception for Amplify Kinesis Data Streams errors.
/// {@endtemplate}
sealed class AmplifyKinesisException extends AmplifyException {
  /// {@macro aws_kinesis_datastreams.amplify_kinesis_exception}
  AmplifyKinesisException({
    required super.message,
    required super.recoverySuggestion,
    super.cause,
  });

  /// Maps an arbitrary error into the appropriate [AmplifyKinesisException]
  /// subtype. If [error] is already an [AmplifyKinesisException], it is
  /// returned as-is. [RecordCacheException] subtypes are mapped to their
  /// corresponding public exception types.
  static AmplifyKinesisException from(Object error) => switch (error) {
    final AmplifyKinesisException e => e,
    final RecordCacheValidationException e => KinesisValidationException(
      e.message,
      recoverySuggestion: e.recoverySuggestion,
    ),
    final RecordCacheLimitExceededException e =>
      KinesisLimitExceededException(
        message: e.message,
        recoverySuggestion: e.recoverySuggestion,
      ),
    final RecordCacheDatabaseException e => KinesisStorageException(
      e.message,
      recoverySuggestion: e.recoverySuggestion,
      cause: e.cause,
    ),
    final Exception e => KinesisUnknownException(
      e.toString(),
      cause: e,
    ),
    _ => KinesisUnknownException(error.toString()),
  };

  @override
  String toString() {
    final buf = StringBuffer('AmplifyKinesisException: $message');
    if (recoverySuggestion.isNotEmpty) {
      buf.write('\nRecovery suggestion: $recoverySuggestion');
    }
    if (cause != null) buf.write('\nCaused by: $cause');
    return buf.toString();
  }
}

/// {@template aws_kinesis_datastreams.kinesis_storage_exception}
/// Thrown when a local cache/database error occurs.
/// {@endtemplate}
final class KinesisStorageException extends AmplifyKinesisException {
  /// {@macro aws_kinesis_datastreams.kinesis_storage_exception}
  KinesisStorageException(
    String message, {
    String? recoverySuggestion,
    super.cause,
  }) : super(
         message: message,
         recoverySuggestion: recoverySuggestion ?? defaultRecoverySuggestion,
       );
}

/// {@template aws_kinesis_datastreams.kinesis_limit_exceeded_exception}
/// Thrown when the local cache is full.
/// {@endtemplate}
final class KinesisLimitExceededException extends AmplifyKinesisException {
  /// {@macro aws_kinesis_datastreams.kinesis_limit_exceeded_exception}
  KinesisLimitExceededException({String? message, String? recoverySuggestion})
    : super(
        message: message ?? 'Cache is full',
        recoverySuggestion:
            recoverySuggestion ?? 'Call flush() or clearCache().',
      );
}

/// {@template aws_kinesis_datastreams.kinesis_validation_exception}
/// Thrown when record input validation fails (e.g. oversized record,
/// invalid partition key).
/// {@endtemplate}
final class KinesisValidationException extends AmplifyKinesisException {
  /// {@macro aws_kinesis_datastreams.kinesis_validation_exception}
  KinesisValidationException(String message, {String? recoverySuggestion})
    : super(
        message: message,
        recoverySuggestion: recoverySuggestion ?? defaultRecoverySuggestion,
      );
}

/// {@template aws_kinesis_datastreams.kinesis_unknown_exception}
/// Catch-all for unexpected errors.
/// {@endtemplate}
final class KinesisUnknownException extends AmplifyKinesisException {
  /// {@macro aws_kinesis_datastreams.kinesis_unknown_exception}
  KinesisUnknownException(String message, {super.cause})
    : super(message: message, recoverySuggestion: defaultRecoverySuggestion);
}

/// {@template aws_kinesis_datastreams.client_closed_exception}
/// Thrown when an operation is attempted on a closed client.
/// {@endtemplate}
final class ClientClosedException extends AmplifyKinesisException {
  /// {@macro aws_kinesis_datastreams.client_closed_exception}
  ClientClosedException()
    : super(
        message: 'Client has been closed',
        recoverySuggestion: 'Create a new AmplifyKinesisClient instance.',
      );
}
