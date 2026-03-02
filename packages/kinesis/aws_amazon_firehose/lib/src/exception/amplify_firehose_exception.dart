// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';

/// {@template aws_amazon_firehose.amplify_firehose_exception}
/// Base exception for Amplify Firehose errors.
/// {@endtemplate}
sealed class AmplifyFirehoseException extends AmplifyException {
  /// {@macro aws_amazon_firehose.amplify_firehose_exception}
  AmplifyFirehoseException({
    required super.message,
    required super.recoverySuggestion,
    super.cause,
  });

  @override
  String toString() {
    final buf = StringBuffer('AmplifyFirehoseException: $message');
    if (recoverySuggestion.isNotEmpty) {
      buf.write('\nRecovery suggestion: $recoverySuggestion');
    }
    if (cause != null) buf.write('\nCaused by: $cause');
    return buf.toString();
  }
}

/// {@template aws_amazon_firehose.firehose_storage_exception}
/// Thrown when a local cache/database error occurs.
/// {@endtemplate}
class FirehoseStorageException extends AmplifyFirehoseException {
  /// {@macro aws_amazon_firehose.firehose_storage_exception}
  FirehoseStorageException(String message, {Object? cause})
      : super(
          message: message,
          recoverySuggestion: 'Try clearing the cache or reinitializing.',
          cause: cause,
        );
}

/// {@template aws_amazon_firehose.firehose_service_exception}
/// Thrown when a Firehose SDK/API error occurs. Inspect [sdkException] for details.
/// {@endtemplate}
class FirehoseServiceException extends AmplifyFirehoseException {
  /// {@macro aws_amazon_firehose.firehose_service_exception}
  FirehoseServiceException(String message, {this.sdkException, Object? cause})
      : super(
          message: message,
          recoverySuggestion: 'Check sdkException for details.',
          cause: cause,
        );

  /// The underlying SDK exception, if any.
  final Object? sdkException;
}

/// {@template aws_amazon_firehose.firehose_limit_exceeded_exception}
/// Thrown when the local cache is full.
/// {@endtemplate}
class FirehoseLimitExceededException extends AmplifyFirehoseException {
  /// {@macro aws_amazon_firehose.firehose_limit_exceeded_exception}
  FirehoseLimitExceededException()
      : super(
          message: 'Cache is full',
          recoverySuggestion: 'Call flush() or clearCache().',
        );
}

/// {@template aws_amazon_firehose.firehose_unknown_exception}
/// Catch-all for unexpected errors.
/// {@endtemplate}
class FirehoseUnknownException extends AmplifyFirehoseException {
  /// {@macro aws_amazon_firehose.firehose_unknown_exception}
  FirehoseUnknownException(String message, {Object? cause})
      : super(
          message: message,
          recoverySuggestion: 'Unexpected error. Please file a bug.',
          cause: cause,
        );
}

/// {@template aws_amazon_firehose.firehose_network_exception}
/// Thrown when a network error prevents communication with Firehose.
/// {@endtemplate}
class FirehoseNetworkException extends AmplifyFirehoseException {
  /// {@macro aws_amazon_firehose.firehose_network_exception}
  FirehoseNetworkException(String message, {Object? cause})
      : super(
          message: message,
          recoverySuggestion: 'Check network connectivity and try again.',
          cause: cause,
        );
}

/// {@template aws_amazon_firehose.firehose_record_too_large_exception}
/// Thrown when a single record exceeds the Firehose per-record size limit
/// (1,000 KB before base64 encoding).
/// {@endtemplate}
class FirehoseRecordTooLargeException extends AmplifyFirehoseException {
  /// {@macro aws_amazon_firehose.firehose_record_too_large_exception}
  FirehoseRecordTooLargeException({
    required int recordBytes,
    required int maxBytes,
  }) : super(
          message:
              'Record size ($recordBytes bytes) exceeds the Firehose '
              'per-record limit ($maxBytes bytes).',
          recoverySuggestion: 'Reduce the record payload size.',
        );
}

/// {@template aws_amazon_firehose.client_closed_exception}
/// Thrown when an operation is attempted on a closed client.
/// {@endtemplate}
class ClientClosedException extends AmplifyFirehoseException {
  /// {@macro aws_amazon_firehose.client_closed_exception}
  ClientClosedException()
      : super(
          message: 'Client has been closed',
          recoverySuggestion: 'Create a new AmplifyFirehoseClient instance.',
        );
}
