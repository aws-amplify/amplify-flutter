// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Internal error type used by RecordClient / RecordStorage.
///
/// Mapped to the public AmplifyKinesisException hierarchy at the
/// AmplifyKinesisClient boundary via `AmplifyKinesisException.from`.
sealed class RecordCacheException implements Exception {
  /// Creates a [RecordCacheException].
  RecordCacheException(this.message, this.recoverySuggestion, [this.cause]);

  /// A message describing the error.
  final String message;

  /// A suggestion for how to recover from the error.
  final String recoverySuggestion;

  /// The underlying cause of the error, if any.
  final Object? cause;

  @override
  String toString() {
    final buf = StringBuffer('RecordCacheException: $message');
    if (cause != null) buf.write('\nCaused by: $cause');
    return buf.toString();
  }
}

/// Database operation failed.
final class RecordCacheDatabaseException extends RecordCacheException {
  /// Creates a [RecordCacheDatabaseException].
  RecordCacheDatabaseException(
    super.message,
    super.recoverySuggestion, [
    super.cause,
  ]);
}

/// Cache limit exceeded — no space for new records.
final class RecordCacheLimitExceededException extends RecordCacheException {
  /// Creates a [RecordCacheLimitExceededException].
  RecordCacheLimitExceededException(
    super.message,
    super.recoverySuggestion, [
    super.cause,
  ]);
}

/// Record input validation failed (e.g. oversized record, invalid partition
/// key).
final class RecordCacheValidationException extends RecordCacheException {
  /// Creates a [RecordCacheValidationException].
  RecordCacheValidationException(
    super.message,
    super.recoverySuggestion, [
    super.cause,
  ]);
}
