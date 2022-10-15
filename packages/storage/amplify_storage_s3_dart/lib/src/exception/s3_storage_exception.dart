// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/sdk/s3.dart' as s3;
import 'package:smithy/smithy.dart';

const _fileIssueMessage =
    'This exception is not expected. Please try again. If the exception persists, please file an issue at https://github.com/aws-amplify/amplify-flutter/issues';
const _clientErrorRecoveryMessage =
    'Please ensure that correct object key is provided, and/or correct `StorageAccessLevel` and `targetIdentityId` are included in the options.';

/// {@template amplify_storage_s3_dart.s3_storage_exception}
/// Represents exceptions that may be thrown calling Storage S3 plugin APIs.
/// {@endtemplate}
class S3StorageException extends StorageException {
  /// {@macro amplify_storage_s3_dart.s3_storage_exception}
  const S3StorageException(
    super.message, {
    required String recoverySuggestion,
    super.underlyingException,
  }) : _recoverySuggestion = recoverySuggestion;

  /// Creates a [S3StorageException] from [UnknownSmithyHttpException] that
  /// represents an exception returned from S3 service.
  factory S3StorageException.fromUnknownSmithyHttpException(
    UnknownSmithyHttpException exception,
  ) {
    switch (exception.statusCode) {
      case 400:
        return S3StorageException(
          'Unexpected client error occurred.',
          recoverySuggestion: _fileIssueMessage,
          underlyingException: exception,
        );
      case 403:
        return S3StorageException(
          'S3 access denied when making the API call.',
          recoverySuggestion: _clientErrorRecoveryMessage,
          underlyingException: exception,
        );
      case 404:
        return S3StorageException.objectNotFoundByKey(exception);
      default:
        return S3StorageException.unknownServiceException(exception);
    }
  }

  /// Creates a [S3StorageException] from a FileSystemException.
  factory S3StorageException.fromFileSystemException(Exception exception) {
    return S3StorageException(
      'Error occurred while reading/write file in the local file system.',
      recoverySuggestion: 'Please review the underlying exception.',
      underlyingException: exception,
    );
  }

  /// Creates a [S3StorageException] that represents an error that shouldn't
  /// happen normally.
  factory S3StorageException.unknownException([String? extraMessage]) {
    return S3StorageException(
      'Unknown exception occurred. $extraMessage',
      recoverySuggestion: _fileIssueMessage,
    );
  }

  /// Creates a [S3StorageException] that represents an unexpected error
  /// returned from S3 service.
  factory S3StorageException.unknownServiceException([Object? exception]) {
    return S3StorageException(
      'Unknown service exception occurred.',
      recoverySuggestion: _fileIssueMessage,
      underlyingException: exception,
    );
  }

  /// Creates a [S3StorageException] that represents an unexpected error
  /// when download operation doesn't receive all bytes when download completes.
  factory S3StorageException.incompleteDownload() {
    return const S3StorageException(
      'Download has completed, but it has not received all bytes of content.',
      recoverySuggestion: _fileIssueMessage,
    );
  }

  /// Creates a [S3StorageException] that represents an unexpected error
  /// when service API call doesn't return a valid content-length header.
  factory S3StorageException.unexpectedContentLengthFromService() {
    return const S3StorageException(
      'Service has not returned a valid content length for requested object.',
      recoverySuggestion: _fileIssueMessage,
    );
  }

  /// Creates a [S3StorageException] that represents an expected exception
  /// thrown when invoke cancel() on an eligible storage operation object.
  factory S3StorageException.controllableOperationCanceled() {
    return const S3StorageException(
      'The requested operation has been canceled.',
      recoverySuggestion:
          'This is an expected exception when you call cancel() API on the storage operation object. You need to handle this exception to take further action on operation cancellation.',
    );
  }

  /// An exception when attempt to create an invalid [S3DataBytesRange].
  factory S3StorageException.invalidBytesRange() {
    return const S3StorageException(
      'Invalid bytes range of `S3DataBytesRange`.',
      recoverySuggestion: '`start` needs to be less than `end`.',
    );
  }

  /// An exception thrown when the `body` returned from GetObject is unexpectedly null.
  factory S3StorageException.unexpectedGetObjectBody() {
    return const S3StorageException(
      'Unexpected null body from GetObject.',
      recoverySuggestion: _fileIssueMessage,
    );
  }

  /// An exception thrown when the write destination path is not a file (e.g.
  /// a directory).
  factory S3StorageException.invalidDownloadFilePath() {
    return const S3StorageException(
      'Invalid destination file path for download.',
      recoverySuggestion:
          'Please use `AWSFile.fromPath` constructor to ensure AWSFile has the correct destination file path, and the path points to a valid file, but not a directory.',
    );
  }

  /// An exception created on top of [s3.NoSuchKey] or general 404 errors.
  factory S3StorageException.objectNotFoundByKey([Object? exception]) {
    return S3StorageException(
      'Object is not found in the bucket.',
      recoverySuggestion: _clientErrorRecoveryMessage,
      underlyingException: exception,
    );
  }

  /// An exception created when attempt to resume a canceled operation.
  factory S3StorageException.resumeCanceledOperation() {
    return const S3StorageException(
      'The operation has been canceled and can\'t be resumed.',
      recoverySuggestion:
          'You can only resume an operation that is paused by calling `pause()`.',
    );
  }

  /// An exception thrown when the service doesn't return a valid uploadId on a
  /// successful `CreateMultipartUploadRequest`.
  factory S3StorageException.unexpectedMultipartUploadId() {
    return const S3StorageException(
      'Create multipart upload request succeeded, but it did not return a valid uploadId.',
      recoverySuggestion: _fileIssueMessage,
    );
  }

  /// An exception thrown when the file to be uploaded is too large to create
  /// a multipart upload.
  factory S3StorageException.uploadSourceIsTooLarge() {
    return const S3StorageException(
      'Upload source is too large to initiate multipart upload.',
      recoverySuggestion:
          'Make sure the size of the uploaded file is less than 50GB.',
    );
  }

  /// An exception thrown when attempting to upload part with a non-existing
  /// multipart upload.
  factory S3StorageException.fromS3NoSuchUpload(Object? exception) {
    return S3StorageException(
      'Multipart upload is not found while initiating a part upload.',
      recoverySuggestion: _fileIssueMessage,
      underlyingException: exception,
    );
  }

  /// An exception thrown when any step during multipart upload fails.
  factory S3StorageException.multipartUploadAborted(Object? exception) {
    return S3StorageException(
      'An error occurred during multipart upload. The upload has been canceled.',
      recoverySuggestion: _fileIssueMessage,
      underlyingException: exception,
    );
  }

  /// An exception thrown when service response doesn't contain a valid eTag.
  /// e.g. the response of an [s3.UploadPartRequest] must contain a eTag in order to
  /// close multipart upload correctly.
  factory S3StorageException.unexpectedETagFromService() {
    return const S3StorageException(
      'Service API call output doesn\'t contain a valid eTag.',
      recoverySuggestion: _fileIssueMessage,
    );
  }

  final String _recoverySuggestion;

  @override
  String get recoverySuggestion => _recoverySuggestion;
}
