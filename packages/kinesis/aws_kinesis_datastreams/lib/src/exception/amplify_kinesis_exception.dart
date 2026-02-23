// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// TODO(v3): Replace with `extends AmplifyException` once V3 foundational
// library is available. For now we implement Exception directly.

/// Base exception for Amplify Kinesis Data Streams errors.
sealed class AmplifyKinesisException implements Exception {
  const AmplifyKinesisException(this.message, {this.recoverySuggestion, this.underlyingException});
  final String message;
  final String? recoverySuggestion;
  final Object? underlyingException;
  @override
  String toString() {
    final buf = StringBuffer('$runtimeType: $message');
    if (recoverySuggestion != null) buf.write('\nRecovery suggestion: $recoverySuggestion');
    if (underlyingException != null) buf.write('\nCaused by: $underlyingException');
    return buf.toString();
  }
}

/// Thrown when a local cache/database error occurs.
class KinesisStorageException extends AmplifyKinesisException {
  const KinesisStorageException(super.message, {super.underlyingException}) : super(recoverySuggestion: 'Try clearing the cache or reinitializing.');
}

/// Thrown when a Kinesis SDK/API error occurs. Inspect [sdkException] for details.
class KinesisServiceException extends AmplifyKinesisException {
  const KinesisServiceException(super.message, {this.sdkException, super.underlyingException}) : super(recoverySuggestion: 'Check sdkException for details.');
  final Object? sdkException;
}

/// Thrown when the local cache is full.
class KinesisLimitExceededException extends AmplifyKinesisException {
  const KinesisLimitExceededException() : super('Cache is full', recoverySuggestion: 'Call flush() or clearCache().');
}

/// Catch-all for unexpected errors.
class KinesisUnknownException extends AmplifyKinesisException {
  const KinesisUnknownException(super.message, {super.underlyingException}) : super(recoverySuggestion: 'Unexpected error. Please file a bug.');
}

/// Thrown when a network error prevents communication with Kinesis.
class KinesisNetworkException extends AmplifyKinesisException {
  const KinesisNetworkException(super.message, {super.underlyingException}) : super(recoverySuggestion: 'Check network connectivity and try again.');
}

/// Thrown when an operation is attempted on a closed client.
class ClientClosedException extends AmplifyKinesisException {
  const ClientClosedException() : super('Client has been closed', recoverySuggestion: 'Create a new AmplifyKinesisClient instance.');
}
