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
import 'package:smithy/smithy.dart';

const _fileIssueMessage =
    'This exception is not expected. Please try again. If the exception persists, please file an issue at https://github.com/aws-amplify/amplify-flutter/issues';

/// {@template amplify_storage_s3_dart.s3_storage_exception}
/// Represents exceptions that may be thrown calling Storage S3 plugin APIs.
/// {@endtemplate}
class S3StorageException extends StorageException {
  /// {@macro amplify_storage_s3_dart.s3_storage_exception}
  const S3StorageException(
    super.message, {
    required String super.recoverySuggestion,
    super.underlyingException,
  });

  /// Creates a [S3StorageException] from [UnknownSmithyHttpException] that
  /// represents an exception returned from S3 service.
  factory S3StorageException.fromUnknownSmithyHttpException(
    UnknownSmithyHttpException exception,
  ) {
    switch (exception.statusCode) {
      case 403:
        return S3StorageException(
          'S3 access denied when making the API call.',
          recoverySuggestion:
              'Please ensure that correct `StorageAccessLevel` and `targetIdentityId` are included in the options.',
          underlyingException: exception,
        );
      default:
        return S3StorageException.unknownServiceException(exception);
    }
  }

  /// Creates a [S3StorageException] that represents an error that shouldn't
  /// happen normally.
  factory S3StorageException.unknownException() {
    return const S3StorageException(
      'Unknown exception occurred.',
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
}
