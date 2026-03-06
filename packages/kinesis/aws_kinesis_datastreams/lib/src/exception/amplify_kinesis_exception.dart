// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';

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
  KinesisStorageException(String message, {super.cause})
    : super(
        message: message,
        recoverySuggestion: 'Try clearing the cache or reinitializing.',
      );
}

/// {@template aws_kinesis_datastreams.kinesis_limit_exceeded_exception}
/// Thrown when the local cache is full.
/// {@endtemplate}
final class KinesisLimitExceededException extends AmplifyKinesisException {
  /// {@macro aws_kinesis_datastreams.kinesis_limit_exceeded_exception}
  KinesisLimitExceededException()
    : super(
        message: 'Cache is full',
        recoverySuggestion: 'Call flush() or clearCache().',
      );
}

/// {@template aws_kinesis_datastreams.kinesis_unknown_exception}
/// Catch-all for unexpected errors.
/// {@endtemplate}
final class KinesisUnknownException extends AmplifyKinesisException {
  /// {@macro aws_kinesis_datastreams.kinesis_unknown_exception}
  KinesisUnknownException(String message, {super.cause})
    : super(
        message: message,
        recoverySuggestion: 'Unexpected error. Please file a bug.',
      );
}

/// {@template aws_kinesis_datastreams.kinesis_network_exception}
/// Thrown when a network error prevents communication with Kinesis.
/// {@endtemplate}
final class KinesisNetworkException extends AmplifyKinesisException {
  /// {@macro aws_kinesis_datastreams.kinesis_network_exception}
  KinesisNetworkException(String message, {super.cause})
    : super(
        message: message,
        recoverySuggestion: 'Check network connectivity and try again.',
      );
}

/// {@template aws_kinesis_datastreams.kinesis_record_too_large_exception}
/// Thrown when a single record exceeds the Kinesis per-record size limit
/// (10 MiB, partition key + data blob combined).
/// {@endtemplate}
final class KinesisRecordTooLargeException extends AmplifyKinesisException {
  /// {@macro aws_kinesis_datastreams.kinesis_record_too_large_exception}
  KinesisRecordTooLargeException({
    required int recordBytes,
    required int maxBytes,
  }) : super(
         message:
             'Record size ($recordBytes bytes) exceeds the Kinesis '
             'per-record limit ($maxBytes bytes). The limit applies to the '
             'total size of the partition key and data blob.',
         recoverySuggestion:
             'Reduce the record payload size or use a shorter partition key.',
       );
}

/// {@template aws_kinesis_datastreams.kinesis_partition_key_invalid_exception}
/// Thrown when a partition key is empty or exceeds the Kinesis limit (256 characters).
/// {@endtemplate}
final class KinesisPartitionKeyInvalidException
    extends AmplifyKinesisException {
  /// {@macro aws_kinesis_datastreams.kinesis_partition_key_invalid_exception}
  KinesisPartitionKeyInvalidException({required int keyLength})
    : super(
        message:
            'Partition key length ($keyLength) is invalid. '
            'Kinesis requires partition keys to be between 1 and 256 characters.',
        recoverySuggestion: 'Use a partition key between 1 and 256 characters.',
      );
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
