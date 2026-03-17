// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_kinesis_dart/src/exception/record_cache_exception.dart';

/// Default recovery suggestion for errors.
const String defaultRecoverySuggestion =
    'Inspect the underlying error for more details.';

/// {@template amplify_kinesis.amplify_kinesis_exception}
/// Base exception for Amplify Kinesis Data Streams errors.
/// {@endtemplate}
sealed class AmplifyKinesisException extends AmplifyException {
  /// {@macro amplify_kinesis.amplify_kinesis_exception}
  const AmplifyKinesisException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
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
    final RecordCacheLimitExceededException e => KinesisLimitExceededException(
      message: e.message,
      recoverySuggestion: e.recoverySuggestion,
    ),
    final RecordCacheDatabaseException e => KinesisStorageException(
      e.message,
      recoverySuggestion: e.recoverySuggestion,
      underlyingException: e.cause,
    ),
    final Exception e => KinesisUnknownException(
      e.toString(),
      underlyingException: e,
    ),
    _ => KinesisUnknownException(error.toString()),
  };
}

/// {@template amplify_kinesis.kinesis_storage_exception}
/// Thrown when a local cache/database error occurs.
/// {@endtemplate}
final class KinesisStorageException extends AmplifyKinesisException {
  /// {@macro amplify_kinesis.kinesis_storage_exception}
  const KinesisStorageException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'KinesisStorageException';
}

/// {@template amplify_kinesis.kinesis_limit_exceeded_exception}
/// Thrown when the local cache is full.
/// {@endtemplate}
final class KinesisLimitExceededException extends AmplifyKinesisException {
  /// {@macro amplify_kinesis.kinesis_limit_exceeded_exception}
  const KinesisLimitExceededException({
    String? message,
    String? recoverySuggestion,
  }) : super(
         message ?? 'Cache is full',
         recoverySuggestion:
             recoverySuggestion ?? 'Call flush() or clearCache().',
       );

  @override
  String get runtimeTypeName => 'KinesisLimitExceededException';
}

/// {@template amplify_kinesis.kinesis_validation_exception}
/// Thrown when record input validation fails (e.g. oversized record,
/// invalid partition key).
/// {@endtemplate}
final class KinesisValidationException extends AmplifyKinesisException {
  /// {@macro amplify_kinesis.kinesis_validation_exception}
  const KinesisValidationException(super.message, {super.recoverySuggestion});

  @override
  String get runtimeTypeName => 'KinesisValidationException';
}

/// {@template amplify_kinesis.kinesis_unknown_exception}
/// Catch-all for unexpected errors.
/// {@endtemplate}
final class KinesisUnknownException extends AmplifyKinesisException {
  /// {@macro amplify_kinesis.kinesis_unknown_exception}
  const KinesisUnknownException(super.message, {super.underlyingException});

  @override
  String get runtimeTypeName => 'KinesisUnknownException';
}

/// {@template amplify_kinesis.client_closed_exception}
/// Thrown when an operation is attempted on a closed client.
/// {@endtemplate}
final class ClientClosedException extends AmplifyKinesisException {
  /// {@macro amplify_kinesis.client_closed_exception}
  const ClientClosedException()
    : super(
        'Client has been closed',
        recoverySuggestion: 'Create a new AmplifyKinesisClient instance.',
      );

  @override
  String get runtimeTypeName => 'ClientClosedException';
}
