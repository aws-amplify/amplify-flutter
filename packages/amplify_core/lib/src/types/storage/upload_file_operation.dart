// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/types/storage/base/storage_controllable_operation.dart';
import 'package:amplify_core/src/types/storage/base/storage_operation.dart';

/// {@template amplify_core.storage.upload_file_operation}
/// Presents a upload file operation.
/// {@endtemplate}
abstract class StorageUploadFileOperation<
        Request extends StorageUploadFileRequest,
        Result extends StorageUploadFileResult>
    extends StorageOperation<Request, Result>
    implements StorageResumableOperation, StorageCancelableOperation {
  /// {@macro amplify_core.storage.upload_file_operation}
  StorageUploadFileOperation({
    required super.request,
    required super.result,
  });

  /// Pauses the operation that is in progress.
  ///
  /// This has no effect on S3 upload operations that do not require a multi part
  /// upload (over 5 MiB). Uploads smaller than 5 MiB cannot be paused or resumed.
  @override
  Future<void> pause();

  /// Resumes the operation that is in a paused state.
  ///
  /// This has no effect on S3 upload operations that do not require a multi part
  /// upload (over 5 MiB). Uploads smaller than 5 MiB cannot be paused or resumed.
  @override
  Future<void> resume();
}
