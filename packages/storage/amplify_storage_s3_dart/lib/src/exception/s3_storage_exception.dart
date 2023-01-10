// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/src/sdk/s3.dart' as s3;
import 'package:smithy/smithy.dart';

const _fileIssueMessage =
    'This exception is not expected. Please try again. If the exception persists, please file an issue at https://github.com/aws-amplify/amplify-flutter/issues';
const _clientErrorRecoveryMessage =
    'Please ensure that correct object key is provided, and/or correct `StorageAccessLevel` and `targetIdentityId` are included in the options.';

/// {@template amplify_storage_s3_dart.s3_storage_exception}
/// Represents exceptions that may be thrown calling Storage S3 plugin APIs.
/// {@endtemplate}
class S3Exception extends StorageException {
  /// {@macro amplify_storage_s3_dart.s3_storage_exception}
  const S3Exception(
    super.message, {
    required String super.recoverySuggestion,
    super.underlyingException,
  });

  /// Creates a [S3Exception] from a FileSystemException.
  factory S3Exception.fromFileSystemException(Exception exception) {
    return S3Exception(
      'Error occurred while reading/writing file in the local file system.',
      recoverySuggestion: 'Please review the underlying exception.',
      underlyingException: exception,
    );
  }

  /// Creates a [S3Exception] that represents an error that shouldn't
  /// happen normally.
  factory S3Exception.unknownException([String? extraMessage]) {
    return S3Exception(
      'Unknown exception occurred. $extraMessage',
      recoverySuggestion: _fileIssueMessage,
    );
  }

  /// Creates a [S3Exception] that represents an unexpected error
  /// when download operation doesn't receive all bytes when download completes.
  factory S3Exception.incompleteDownload() {
    return const S3Exception(
      'Download has completed, but it has not received all bytes of content.',
      recoverySuggestion: _fileIssueMessage,
    );
  }

  /// Creates a [S3Exception] that represents an unexpected error
  /// when service API call doesn't return a valid content-length header.
  factory S3Exception.unexpectedContentLengthFromService() {
    return const S3Exception(
      'Service has not returned a valid content length for requested object.',
      recoverySuggestion: _fileIssueMessage,
    );
  }

  /// Creates a [S3Exception] that represents an expected exception
  /// thrown when invoke cancel() on an eligible storage operation object.
  factory S3Exception.controllableOperationCanceled() {
    return const S3Exception(
      'The requested operation has been canceled.',
      recoverySuggestion:
          'This is an expected exception when you call cancel() API on the storage operation object. You need to handle this exception to take further action on operation cancellation.',
    );
  }

  /// An exception thrown when the `body` returned from GetObject is unexpectedly null.
  factory S3Exception.unexpectedGetObjectBody() {
    return const S3Exception(
      'Unexpected null body from GetObject.',
      recoverySuggestion: _fileIssueMessage,
    );
  }

  /// An exception created when attempt to resume a canceled operation.
  factory S3Exception.resumeCanceledOperation() {
    return const S3Exception(
      'The operation has been canceled and can\'t be resumed.',
      recoverySuggestion:
          'You can only resume an operation that is paused by calling `pause()`.',
    );
  }

  /// An exception thrown when the service doesn't return a valid uploadId on a
  /// successful `CreateMultipartUploadRequest`.
  factory S3Exception.unexpectedMultipartUploadId() {
    return const S3Exception(
      'Create multipart upload request succeeded, but it did not return a valid uploadId.',
      recoverySuggestion: _fileIssueMessage,
    );
  }

  /// An exception thrown when the file to be uploaded is too large to create
  /// a multipart upload.
  factory S3Exception.uploadSourceIsTooLarge() {
    return const S3Exception(
      'Upload source is too large to initiate multipart upload.',
      recoverySuggestion:
          'Make sure the size of the uploaded file is less than 50GB.',
    );
  }

  /// An exception thrown when attempting to upload part with a non-existing
  /// multipart upload.
  factory S3Exception.fromS3NoSuchUpload(Object? exception) {
    return S3Exception(
      'Multipart upload is not found while initiating a part upload.',
      recoverySuggestion: _fileIssueMessage,
      underlyingException: exception,
    );
  }

  /// An exception thrown when any step during multipart upload fails.
  factory S3Exception.multipartUploadAborted(Object? exception) {
    return S3Exception(
      'An error occurred during multipart upload. The upload has been canceled.',
      recoverySuggestion: _fileIssueMessage,
      underlyingException: exception,
    );
  }

  /// An exception thrown when service response doesn't contain a valid eTag.
  /// e.g. the response of an [s3.UploadPartRequest] must contain a eTag in order to
  /// close multipart upload correctly.
  factory S3Exception.unexpectedETagFromService() {
    return const S3Exception(
      'Service API call output doesn\'t contain a valid eTag.',
      recoverySuggestion: _fileIssueMessage,
    );
  }

  /// A [StorageLocalFileNotFoundException] thrown when download destination file
  /// path points to a directory.
  static const StorageLocalFileNotFoundException
      downloadDestinationFilePathIsDirectory =
      StorageLocalFileNotFoundException(
    'Download destination file path is a directory',
    recoverySuggestion:
        'Ensure the path provided with `AWSFile` is pointing to a file, and not a directory.',
  );

  /// A [StorageLocalFileNotFoundException] thrown when download destination file
  /// path is `null`.
  static const StorageLocalFileNotFoundException
      downloadDestinationFilePathIsNull = StorageLocalFileNotFoundException(
    'Download destination file path is null',
    recoverySuggestion: 'Ensure a valid file path with `AWSFile` was provided.',
  );

  /// Creates a [StorageKeyNotFoundException] from an [Exception]
  static StorageKeyNotFoundException getKeyNotFoundException(
    Exception underlyingException,
  ) =>
      StorageKeyNotFoundException(
        'Key is not found.',
        recoverySuggestion: _clientErrorRecoveryMessage,
        underlyingException: underlyingException,
      );

  /// Creates [StorageException] variants from [UnknownSmithyHttpException].
  static StorageException fromUnknownSmithyHttpException(
    UnknownSmithyHttpException exception,
  ) {
    final statusCode = exception.statusCode;

    if (statusCode ~/ 100 == 3 || statusCode ~/ 100 == 5) {
      return StorageHttpStatusException(
        statusCode,
        recoverySuggestion: _clientErrorRecoveryMessage,
        underlyingException: exception,
      );
    }

    if (statusCode ~/ 100 == 4) {
      if ([401, 403].contains(statusCode)) {
        return StorageAccessDeniedException(
          'S3 access denied when making the API call.',
          recoverySuggestion: _clientErrorRecoveryMessage,
          underlyingException: exception,
        );
      } else if (statusCode == 404) {
        return getKeyNotFoundException(exception);
      } else {
        return StorageHttpStatusException(
          statusCode,
          recoverySuggestion: _clientErrorRecoveryMessage,
          underlyingException: exception,
        );
      }
    }

    return StorageUnknownException(
      'Unknown service error.',
      recoverySuggestion: _fileIssueMessage,
      underlyingException: exception,
    );
  }

  /// Creates a [StorageUnknownException] for a [s3.S3Object] that is missing
  /// a valid `key`, this exception should not happen normally.
  static StorageUnknownException getS3ObjectMissingKeyException(
    s3.S3Object object,
  ) =>
      StorageUnknownException(
        'Missing key in a S3Object: $object',
        recoverySuggestion: _fileIssueMessage,
      );

  @override
  String get runtimeTypeName => 'S3Exception';
}
