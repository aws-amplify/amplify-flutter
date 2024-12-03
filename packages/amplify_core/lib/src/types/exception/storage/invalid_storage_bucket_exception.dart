part of '../amplify_exception.dart';

/// {@template amplify_core.storage.invalid_storage_bucket_exception}
/// Exception thrown when the [StorageBucket] is invalid.
/// {@endtemplate}
class InvalidStorageBucketException extends StorageException {
  const InvalidStorageBucketException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'InvalidStorageBucketException';
}
