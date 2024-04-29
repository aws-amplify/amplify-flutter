// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@internal
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/src/sdk/s3.dart' as s3;
import 'package:meta/meta.dart';
import 'package:smithy/smithy.dart' as smithy;

const _notFoundRecoveryMessage = 'Ensure that correct StoragePath is provided.';
const _httpErrorRecoveryMessage =
    'HTTP error returned from service, review the `underlyingException` for details.';

/// The exception thrown when cancel a controllable operation.
const s3ControllableOperationCanceledException =
    StorageOperationCanceledException(
  'The operation has been canceled.',
  recoverySuggestion:
      'This is expected when you call cancel() on a storage operation. This'
      ' exception allows you to take further action when an operation is canceled.',
);

/// The exception thrown when attempt to use acceleration endpoint with a bucket
/// that has dots in its name.
final accelerateEndpointUnusable = ConfigurationError(
  'S3 Transfer Acceleration is not supported for buckets with periods (.) in their names',
);

/// Extension of [s3.NoSuchKey] to add util methods.
extension NoSuchKeyToStorageKeyNotFoundException on s3.NoSuchKey {
  /// Creates a [StorageNotFoundException] with the [s3.NoSuchKey] as the
  /// underlying exception.
  StorageNotFoundException toStorageNotFoundException() {
    return StorageNotFoundException(
      'Cannot find the item specified by the provided path.',
      recoverySuggestion: _notFoundRecoveryMessage,
      underlyingException: this,
    );
  }
}

/// Extension of [smithy.UnknownSmithyHttpException] to add util methods.
extension UnknownSmithyHttpExceptionToStorageException
    on smithy.UnknownSmithyHttpException {
  /// Creates a [StorageException] with the [smithy.UnknownSmithyHttpException]
  /// as the underlying exception.
  StorageException toStorageException() {
    final statusCode = this.statusCode;

    if (statusCode ~/ 100 == 3 || statusCode ~/ 100 == 5) {
      return StorageHttpStatusException(
        statusCode,
        recoverySuggestion: _httpErrorRecoveryMessage,
        underlyingException: this,
      );
    }

    if (statusCode ~/ 100 == 4) {
      if (statusCode == 401 || statusCode == 403) {
        return StorageAccessDeniedException(
          'S3 access denied when making the API call.',
          recoverySuggestion: _httpErrorRecoveryMessage,
          underlyingException: this,
        );
      } else if (statusCode == 404) {
        return StorageNotFoundException(
          'Cannot find the item specified by the provided path.',
          recoverySuggestion: _notFoundRecoveryMessage,
          underlyingException: this,
        );
      } else {
        return StorageHttpStatusException(
          statusCode,
          recoverySuggestion: _httpErrorRecoveryMessage,
          underlyingException: this,
        );
      }
    }

    return UnknownException(
      'Unknown service error.',
      recoverySuggestion: AmplifyExceptionMessages.missingExceptionMessage,
      underlyingException: this,
    );
  }
}
