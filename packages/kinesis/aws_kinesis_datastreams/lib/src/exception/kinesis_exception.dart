// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template aws_kinesis_datastreams.kinesis_exception}
/// Base exception for Kinesis Data Streams errors.
///
/// All exceptions thrown by the library extend this class, making it easy
/// to catch all Kinesis-related errors:
///
/// ```dart
/// try {
///   await kinesis.record(...);
/// } on KinesisDataStreamsException catch (e) {
///   print('Kinesis error: ${e.message}');
///   if (e.recoverySuggestion != null) {
///     print('Suggestion: ${e.recoverySuggestion}');
///   }
/// }
/// ```
/// {@endtemplate}
class KinesisDataStreamsException implements Exception {
  /// {@macro aws_kinesis_datastreams.kinesis_exception}
  ///
  /// Creates a Kinesis Data Streams exception.
  const KinesisDataStreamsException(
    this.message, {
    this.recoverySuggestion,
    this.underlyingException,
  });

  /// A descriptive message about the error.
  final String message;

  /// A suggestion for how to recover from the error.
  ///
  /// This provides actionable guidance for resolving the issue.
  final String? recoverySuggestion;

  /// The underlying exception that caused this error, if any.
  ///
  /// This is useful for debugging and logging the root cause.
  final Object? underlyingException;

  @override
  String toString() {
    final buffer = StringBuffer('KinesisDataStreamsException: $message');
    if (recoverySuggestion != null) {
      buffer.write('\nRecovery suggestion: $recoverySuggestion');
    }
    if (underlyingException != null) {
      buffer.write('\nCaused by: $underlyingException');
    }
    return buffer.toString();
  }
}

/// {@template aws_kinesis_datastreams.cache_full_exception}
/// Thrown when the cache is full and cannot accept new records.
///
/// This exception is thrown when calling [KinesisDataStreams.record] and the
/// local cache has reached its maximum size (configured via
/// [KinesisDataStreamsOptions.cacheMaxBytes]).
///
/// To resolve this:
/// - Call [KinesisDataStreams.flush] to send cached records
/// - Call [KinesisDataStreams.clearCache] to remove all cached records
/// - Increase [KinesisDataStreamsOptions.cacheMaxBytes]
/// {@endtemplate}
class CacheFullException extends KinesisDataStreamsException {
  /// {@macro aws_kinesis_datastreams.cache_full_exception}
  const CacheFullException()
      : super(
          'Cache is full',
          recoverySuggestion:
              'Call flush() to send cached records or clearCache() to remove them.',
        );
}

/// {@template aws_kinesis_datastreams.credentials_exception}
/// Thrown when credentials cannot be resolved.
///
/// This exception is thrown when the [AWSCredentialsProvider] fails to
/// provide valid credentials for signing API requests.
///
/// Common causes:
/// - Invalid or expired credentials
/// - Network issues preventing credential refresh
/// - Misconfigured credential provider
/// {@endtemplate}
class CredentialsException extends KinesisDataStreamsException {
  /// {@macro aws_kinesis_datastreams.credentials_exception}
  const CredentialsException(super.message, {super.underlyingException})
      : super(
          recoverySuggestion: 'Verify your CredentialsProvider implementation.',
        );
}

/// {@template aws_kinesis_datastreams.network_exception}
/// Thrown when a network error occurs.
///
/// This exception is thrown when the library cannot communicate with
/// AWS Kinesis Data Streams due to network issues.
///
/// Records that fail due to network errors are retained in the cache
/// and will be retried on the next flush operation.
/// {@endtemplate}
class NetworkException extends KinesisDataStreamsException {
  /// {@macro aws_kinesis_datastreams.network_exception}
  const NetworkException(super.message, {super.underlyingException})
      : super(
          recoverySuggestion: 'Check network connectivity and try again.',
        );
}
